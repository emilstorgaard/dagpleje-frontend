<script lang="ts">
	import logo from '$lib/assets/favicon.svg';
	import logo2 from '$lib/assets/favicon.svg';
	import logo3 from '$lib/assets/favicon.svg';
	import logo4 from '$lib/assets/favicon.svg';
	import logo5 from '$lib/assets/favicon.svg';
	import logo6 from '$lib/assets/favicon.svg';

	interface Activity {
		icon: typeof logo;
		title: string;
		description: string;
	}

	const activities: Activity[] = [
		{
			icon: logo,
			title: 'Kreative aktiviteter',
			description: 'Maling, tegning og håndarbejde stimulerer fantasien'
		},
		{
			icon: logo2,
			title: 'Musik og bevægelse',
			description: 'Sang, dans og rytmik hver dag'
		},
		{
			icon: logo3,
			title: 'Udeliv',
			description: 'Daglige ture i naturen og på legepladsen'
		},
		{
			icon: logo4,
			title: 'Læsning',
			description: 'Højtlæsning og billeder bøger'
		},
		{
			icon: logo5,
			title: 'Sunde måltider',
			description: 'Hjemmelavet mad med økologiske råvarer'
		},
		{
			icon: logo6,
			title: 'Tryg tilknytning',
			description: 'Nærhed og omsorg i hverdagen'
		}
	];
</script>

<section id="aktiviteter" class="bg-white px-4 py-20">
	<div class="mx-auto max-w-6xl">
		<h2 class="mb-12 text-center text-4xl font-bold text-gray-800">Hvad laver vi?</h2>

		<div class="mb-16 grid gap-8 md:grid-cols-2">
			<img
				src="https://images.unsplash.com/photo-1654343532574-53e699fe0cd8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3Nzg4Nzd8MHwxfHNlYXJjaHwxfHxjaGlsZHJlbiUyMG91dGRvb3IlMjBhY3Rpdml0aWVzJTIwcGxheWdyb3VuZHxlbnwxfHx8fDE3NzY3OTA1MDl8MA&ixlib=rb-4.1.0&q=80&w=1080"
				alt="Børn leger udenfor"
				class="h-[300px] w-full rounded-lg object-cover shadow-lg"
			/>
			<img
				src="https://images.unsplash.com/photo-1637195141628-f0f75585a07f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3Nzg4Nzd8MHwxfHNlYXJjaHwxfHxjaGlsZHJlbiUyMHJlYWRpbmclMjBib29rcyUyMGxlYXJuaW5nfGVufDF8fHx8MTc3Njc5MDUxMHww&ixlib=rb-4.1.0&q=80&w=1080"
				alt="Børn læser bøger"
				class="h-[300px] w-full rounded-lg object-cover shadow-lg"
			/>
		</div>

		<div class="grid gap-6 sm:grid-cols-2 lg:grid-cols-3">
			{#each activities as activity}
				<div class="rounded-lg border bg-white p-6 shadow-sm transition-shadow hover:shadow-lg">
					<img
						src={activity.icon}
						alt="Solstråle Dagpleje logo"
						class="mb-3 h-12 w-12 text-pink-500"
					/>
					<h3 class="mb-2 text-xl font-semibold text-gray-800">{activity.title}</h3>
					<p class="text-gray-600">{activity.description}</p>
				</div>
			{/each}
		</div>
	</div>
</section>
