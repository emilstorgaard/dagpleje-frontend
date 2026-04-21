<script lang="ts">
	interface Testimonial {
		name: string;
		child: string;
		text: string;
		initials: string;
	}

	const testimonials: Testimonial[] = [
		{
			name: 'Anne og Peter',
			child: 'Lucas, 2 år',
			text: 'Eline er fantastisk! Vores søn trives enormt hos hende. Hun er kærlig, tålmodig og har en fantastisk evne til at skabe trygge rammer. Vi kan varmt anbefale hende!',
			initials: 'AP'
		},
		{
			name: 'Sarah',
			child: 'Emma, 1 år',
			text: 'Det bedste valg vi har truffet. Emma elsker at komme i dagpleje, og vi kan mærke hvor glad og tilfreds hun er. Eline er super dygtig og kommunikationen er altid i top!',
			initials: 'S'
		},
		{
			name: 'Michael og Louise',
			child: 'Noah, 3 år',
			text: 'Vi er så taknemmelige for at have fundet Eline. Hun har fulgt vores søn siden han var 8 måneder, og vi kan se hvor meget han har udviklet sig. Hendes engagement er enestående!',
			initials: 'ML'
		}
	];
</script>

<section id="anmeldelser" class="relative overflow-hidden bg-white px-4 py-24">
	<!-- Decorative blobs -->
	<div class="absolute -top-24 right-0 h-96 w-96 rounded-full bg-green-50/80 blur-3xl"></div>
	<div class="absolute -bottom-24 left-0 h-80 w-80 rounded-full bg-green-50/60 blur-3xl"></div>

	<div class="relative mx-auto max-w-6xl">
		<!-- Header -->
		<div class="mb-4 flex justify-center">
			<span class="rounded-full bg-green-100 px-4 py-1.5 text-sm font-semibold tracking-widest text-green-700 uppercase">
				Anmeldelser
			</span>
		</div>
		<h2 class="mb-4 text-center text-4xl font-bold text-gray-800 md:text-5xl">
			Hvad siger forældrene?
		</h2>
		<p class="mb-16 text-center text-lg text-gray-500">
			Tillid og tryghed er alt — se hvad andre familier siger
		</p>

		<div class="grid gap-8 md:grid-cols-3">
			{#each testimonials as testimonial}
				<div class="group relative flex flex-col rounded-3xl border border-gray-100 bg-white p-8 shadow-sm transition-all duration-300 hover:-translate-y-1 hover:border-green-200 hover:shadow-xl">
					<!-- Quote mark -->
					<div class="absolute top-6 right-8 text-6xl font-serif leading-none text-green-100 select-none">
						"
					</div>

					<!-- Stars -->
					<div class="mb-5 flex gap-1">
						{#each Array(5) as _}
							<svg class="h-5 w-5 text-yellow-400" fill="currentColor" viewBox="0 0 20 20">
								<path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
							</svg>
						{/each}
					</div>

					<!-- Text -->
					<p class="mb-8 flex-1 leading-relaxed text-gray-600 italic">
						"{testimonial.text}"
					</p>

					<!-- Author -->
					<div class="flex items-center gap-4 border-t border-gray-100 pt-6">
						<div class="flex h-11 w-11 flex-shrink-0 items-center justify-center rounded-full bg-green-100 text-sm font-bold text-green-700">
							{testimonial.initials}
						</div>
						<div>
							<p class="font-bold text-gray-800">{testimonial.name}</p>
							<p class="text-sm text-gray-500">Forældre til {testimonial.child}</p>
						</div>
					</div>
				</div>
			{/each}
		</div>

		<!-- Summary bar -->
		<div class="mt-16 flex flex-col items-center justify-center gap-6 rounded-3xl bg-green-50 px-8 py-8 sm:flex-row">
			<div class="text-center">
				<p class="text-4xl font-bold text-gray-800">5.0</p>
				<div class="mt-1 flex justify-center gap-0.5">
					{#each Array(5) as _}
						<svg class="h-4 w-4 text-yellow-400" fill="currentColor" viewBox="0 0 20 20">
							<path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
						</svg>
					{/each}
				</div>
				<p class="mt-1 text-sm text-gray-500">Gennemsnitlig bedømmelse</p>
			</div>
			<div class="hidden h-12 w-px bg-green-200 sm:block"></div>
			<div class="text-center">
				<p class="text-4xl font-bold text-gray-800">3</p>
				<p class="mt-1 text-sm text-gray-500">Glade familier</p>
			</div>
			<div class="hidden h-12 w-px bg-green-200 sm:block"></div>
			<div class="text-center">
				<p class="text-4xl font-bold text-gray-800">10+</p>
				<p class="mt-1 text-sm text-gray-500">Års erfaring</p>
			</div>
		</div>
	</div>
</section>