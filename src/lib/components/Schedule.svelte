<script lang="ts">
	import logo from '$lib/assets/favicon.svg';

	interface ScheduleItem {
		time: string;
		activity: string;
	}

	const scheduleItems: ScheduleItem[] = [
		{ time: '7:00 - 8:30', activity: 'Ankomst og morgenmad' },
		{ time: '8:30 - 9:30', activity: 'Fri leg' },
		{ time: '9:30 - 11:00', activity: 'Udetur eller aktiviteter' },
		{ time: '11:00 - 11:30', activity: 'Frokost' },
		{ time: '11:30 - 13:30', activity: 'Middagslur' },
		{ time: '13:30 - 14:00', activity: 'Frugt og vand' },
		{ time: '14:00 - 15:30', activity: 'Leg og aktiviteter' },
		{ time: '15:30 - 16:00', activity: 'Mellemmåltid' },
		{ time: '16:00 - 17:00', activity: 'Fri leg og afhentning' }
	];
</script>

<section id="dagsprogram" class="bg-green-50 px-4 py-20">
	<div class="mx-auto max-w-4xl">
		<h2 class="mb-12 text-center text-4xl font-bold text-gray-800">En typisk dag</h2>

		<div class="rounded-lg border bg-white p-8 shadow-xl">
			<div class="space-y-4">
				{#each scheduleItems as item}
					<div class="flex items-start gap-4 rounded-lg p-4 transition-colors hover:bg-green-50">
						<p class="mt-1 h-12 w-20 flex-shrink-0 text-green-500 text-5xl">🕓</p>
						<div class="flex-1">
							<div class="font-semibold text-gray-800">{item.time}</div>
							<div class="text-gray-600">{item.activity}</div>
						</div>
					</div>
				{/each}
			</div>
		</div>

		<p class="mt-8 text-center text-lg text-gray-600">
			Dagsprogrammet tilpasses altid børnenes behov og vejret
		</p>
	</div>
</section>
