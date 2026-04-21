<script lang="ts">
	import logo from '$lib/assets/favicon.svg';
</script>

<footer class="bg-gray-800 px-4 py-8 text-white">
	<div class="mx-auto max-w-6xl text-center">
		<div class="mb-4 flex items-center justify-center gap-2">
			<img src={logo} alt="Solstråle Dagpleje logo" class="h-6 w-6 fill-current text-pink-400" />
			<span class="text-xl font-bold">Solstråle Dagpleje</span>
		</div>
		<p class="mb-2 text-gray-400">Maria Hansen</p>
		<p class="mb-4 text-gray-400">Solskinsvej 42, 2100 København Ø | Tlf: +45 12 34 56 78</p>
		<p class="text-sm text-gray-500">
			© {new Date().getFullYear()} Solstråle Dagpleje. Alle rettigheder forbeholdes.
		</p>
	</div>
</footer>
