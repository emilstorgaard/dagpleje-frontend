<script lang="ts">
	import logo from '$lib/assets/favicon.svg';

	interface Testimonial {
		name: string;
		child: string;
		text: string;
	}

	const testimonials: Testimonial[] = [
		{
			name: 'Anne og Peter',
			child: 'Lucas, 2 år',
			text: 'Maria er fantastisk! Vores søn trives enormt hos hende. Hun er kærlig, tålmodig og har en fantastisk evne til at skabe trygge rammer. Vi kan varmt anbefale hende!'
		},
		{
			name: 'Sarah',
			child: 'Emma, 1 år',
			text: 'Det bedste valg vi har truffet. Emma elsker at komme i dagpleje, og vi kan mærke hvor glad og tilfreds hun er. Maria er super dygtig og kommunikationen er altid i top!'
		},
		{
			name: 'Michael og Louise',
			child: 'Noah, 3 år',
			text: 'Vi er så taknemmelige for at have fundet Maria. Hun har fulgt vores søn siden han var 8 måneder, og vi kan se hvor meget han har udviklet sig. Hendes engagement er enestående!'
		}
	];
</script>

<section id="anmeldelser" class="bg-white px-4 py-20">
	<div class="mx-auto max-w-6xl">
		<h2 class="mb-12 text-center text-4xl font-bold text-gray-800">Hvad siger forældrene?</h2>

		<div class="grid gap-8 md:grid-cols-3">
			{#each testimonials as testimonial}
				<div class="rounded-lg border bg-white p-6 shadow-sm transition-shadow hover:shadow-xl">
					<div class="mb-4 flex gap-1">
						{#each Array(5) as _}
							<p class="text-xl fill-yellow-400 text-yellow-400">⭐</p>
						{/each}
					</div>
					<p class="mb-4 text-gray-700 italic">"{testimonial.text}"</p>
					<div class="border-t pt-4">
						<p class="font-semibold text-gray-800">{testimonial.name}</p>
						<p class="text-sm text-gray-600">Forældre til {testimonial.child}</p>
					</div>
				</div>
			{/each}
		</div>
	</div>
</section>
