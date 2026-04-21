<script lang="ts">
	import logo from '$lib/assets/favicon.svg';
	import logo2 from '$lib/assets/favicon.svg';
	import logo3 from '$lib/assets/favicon.svg';
	import logo4 from '$lib/assets/favicon.svg';
</script>

<section id="kontakt" class="bg-pink-50 px-4 py-20">
	<div class="mx-auto max-w-4xl">
		<h2 class="mb-12 text-center text-4xl font-bold text-gray-800">Kontakt mig</h2>

		<div class="rounded-lg border bg-white p-8 shadow-xl">
			<div class="grid gap-8 md:grid-cols-2">
				<div class="space-y-6">
					<div class="flex items-start gap-4">
						<img
							src={logo}
							alt="Solstråle Dagpleje logo"
							class="mt-1 h-6 w-6 flex-shrink-0 text-pink-500"
						/>
						<div>
							<h3 class="mb-1 font-semibold text-gray-800">Telefon</h3>
							<a href="tel:+4512345678" class="text-pink-600 hover:underline"> +45 12 34 56 78 </a>
						</div>
					</div>

					<div class="flex items-start gap-4">
						<img
							src={logo2}
							alt="Solstråle Dagpleje logo"
							class="mt-1 h-6 w-6 flex-shrink-0 text-pink-500"
						/>
						<div>
							<h3 class="mb-1 font-semibold text-gray-800">Email</h3>
							<a href="mailto:maria@solstraale-dagpleje.dk" class="text-pink-600 hover:underline">
								maria@solstraale-dagpleje.dk
							</a>
						</div>
					</div>

					<div class="flex items-start gap-4">
						<img
							src={logo3}
							alt="Solstråle Dagpleje logo"
							class="mt-1 h-6 w-6 flex-shrink-0 text-pink-500"
						/>
						<div>
							<h3 class="mb-1 font-semibold text-gray-800">Adresse</h3>
							<p class="text-gray-700">
								Solskinsvej 42<br />
								2100 København Ø
							</p>
						</div>
					</div>

					<div class="flex items-start gap-4">
						<img
							src={logo4}
							alt="Solstråle Dagpleje logo"
							class="mt-1 h-6 w-6 flex-shrink-0 text-pink-500"
						/>
						<div>
							<h3 class="mb-1 font-semibold text-gray-800">Åbningstider</h3>
							<p class="text-gray-700">
								Mandag - Fredag<br />
								7:00 - 17:00
							</p>
						</div>
					</div>
				</div>

				<div class="rounded-lg bg-pink-50 p-6">
					<h3 class="mb-4 text-xl font-semibold text-gray-800">Ledige pladser</h3>
					<p class="mb-4 text-gray-700">
						Jeg har aktuelt <strong class="text-pink-600">2 ledige pladser</strong> fra august 2026.
					</p>
					<p class="mb-6 text-gray-700">
						Er du interesseret i at høre mere om dagplejen eller se vores lokaler? Så er du meget
						velkommen til at kontakte mig for en uforpligtende snak.
					</p>
					<div class="rounded-lg border-2 border-pink-200 bg-white p-4">
						<p class="text-sm text-gray-600">
							💝 Jeg tilbyder også introduktionsforløb, så dit barn kan vænne sig til dagplejen i
							eget tempo
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
