<script lang="ts">
	interface Activity {
		icon: string;
		title: string;
		description: string;
	}

	const activities: Activity[] = [
		{ icon: "🎨", title: 'Kreative aktiviteter', description: 'Maling, tegning og håndarbejde stimulerer fantasien' },
		{ icon: "🎵", title: 'Musik og bevægelse', description: 'Sang, dans og rytmik hver dag' },
		{ icon: "🌳", title: 'Udeliv', description: 'Daglige ture i naturen og på legepladsen' },
		{ icon: "📙", title: 'Læsning', description: 'Højtlæsning og billedbøger' },
		{ icon: "🍽️", title: 'Sunde måltider', description: 'Hjemmelavet mad med økologiske råvarer' },
		{ icon: "👩‍🍼", title: 'Tryg tilknytning', description: 'Nærhed og omsorg i hverdagen' }
	];

	const slides = [
		{
			src: 'https://images.unsplash.com/photo-1654343532574-53e699fe0cd8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3Nzg4Nzd8MHwxfHNlYXJjaHwxfHxjaGlsZHJlbiUyMG91dGRvb3IlMjBhY3Rpdml0aWVzJTIwcGxheWdyb3VuZHxlbnwxfHx8fDE3NzY3OTA1MDl8MA&ixlib=rb-4.1.0&q=80&w=1080',
			alt: 'Børn leger udenfor',
			caption: 'Daglige udeteventyr'
		},
		{
			src: 'https://images.unsplash.com/photo-1637195141628-f0f75585a07f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3Nzg4Nzd8MHwxfHNlYXJjaHwxfHxjaGlsZHJlbiUyMHJlYWRpbmclMjBib29rcyUyMGxlYXJuaW5nfGVufDF8fHx8MTc3Njc5MDUxMHww&ixlib=rb-4.1.0&q=80&w=1080',
			alt: 'Børn læser bøger',
			caption: 'Læring og nysgerrighed'
		},
		{
			src: 'https://images.unsplash.com/photo-1587654780291-39c9404d746b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
			alt: 'Børn maler',
			caption: 'Kreativ udfoldelse'
		}
	];

	let current = $state(0);
	let transitioning = $state(false);

	function goTo(index: number): void {
		if (transitioning || index === current) return;
		transitioning = true;
		current = (index + slides.length) % slides.length;
		setTimeout(() => (transitioning = false), 500);
	}

	function prev(): void { goTo(current - 1); }
	function next(): void { goTo(current + 1); }

	import { onMount, onDestroy } from 'svelte';
	let interval: ReturnType<typeof setInterval>;
	onMount(() => { interval = setInterval(next, 4000); });
	onDestroy(() => clearInterval(interval));
</script>

<section id="aktiviteter" class="bg-white px-4 py-20">
	<div class="mx-auto max-w-6xl">
		<h2 class="mb-12 text-center text-4xl font-bold text-gray-800">Hvad laver vi?</h2>

		<!-- Carousel -->
		<div class="relative mb-16 overflow-hidden rounded-2xl shadow-xl" style="height: 380px;">
			{#each slides as slide, i}
				<div
					class="absolute inset-0 transition-opacity duration-500"
					style="opacity: {i === current ? 1 : 0}; z-index: {i === current ? 1 : 0};"
				>
					<img
						src={slide.src}
						alt={slide.alt}
						class="h-full w-full object-cover"
					/>
					<!-- Gradient overlay -->
					<div class="absolute inset-0 bg-gradient-to-t from-black/50 via-transparent to-transparent"></div>
					<!-- Caption -->
					<div class="absolute bottom-6 left-6">
						<p class="text-lg font-semibold text-white drop-shadow">{slide.caption}</p>
					</div>
				</div>
			{/each}

			<!-- Prev/Next buttons -->
			<button
				on:click={prev}
				class="absolute left-4 top-1/2 z-10 -translate-y-1/2 rounded-full bg-white/80 p-2 shadow-md backdrop-blur-sm transition hover:bg-white"
				aria-label="Forrige billede"
			>
				<svg class="h-5 w-5 text-gray-800" fill="none" stroke="currentColor" viewBox="0 0 24 24">
					<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7" />
				</svg>
			</button>
			<button
				on:click={next}
				class="absolute right-4 top-1/2 z-10 -translate-y-1/2 rounded-full bg-white/80 p-2 shadow-md backdrop-blur-sm transition hover:bg-white"
				aria-label="Næste billede"
			>
				<svg class="h-5 w-5 text-gray-800" fill="none" stroke="currentColor" viewBox="0 0 24 24">
					<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
				</svg>
			</button>

			<!-- Dots -->
			<div class="absolute bottom-4 right-6 z-10 flex gap-2">
				{#each slides as _, i}
					<button
						on:click={() => goTo(i)}
						class="h-2 rounded-full transition-all duration-300 {i === current ? 'w-6 bg-white' : 'w-2 bg-white/50'}"
						aria-label="Gå til billede {i + 1}"
					/>
				{/each}
			</div>
		</div>

		<!-- Activity cards -->
		<div class="grid gap-6 sm:grid-cols-2 lg:grid-cols-3">
			{#each activities as activity}
				<div class="rounded-lg border bg-white p-6 shadow-sm transition-shadow hover:shadow-lg">
					<p class="mb-3 text-5xl">{activity.icon}</p>
					<h3 class="mb-2 text-xl font-semibold text-gray-800">{activity.title}</h3>
					<p class="text-gray-600">{activity.description}</p>
				</div>
			{/each}
		</div>
	</div>
</section>