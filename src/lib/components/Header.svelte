<script lang="ts">
	let isMenuOpen: boolean = $state(false);

	interface NavItem {
		label: string;
		href: string;
	}

	const navItems: NavItem[] = [
		{ label: 'Om mig', href: '#om-mig' },
		{ label: 'Aktiviteter', href: '#aktiviteter' },
		{ label: 'Dagsprogram', href: '#dagsprogram' },
		{ label: 'Anmeldelser', href: '#anmeldelser' },
		{ label: 'Kontakt', href: '#kontakt' }
	];

	function handleNavClick(href: string): void {
		isMenuOpen = false;
		const element = document.querySelector(href);
		element?.scrollIntoView({ behavior: 'smooth' });
	}
</script>

<header class="sticky top-0 z-50 bg-white/80 shadow-md backdrop-blur-md">
	<div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
		<div class="flex h-20 items-center justify-between">

			<!-- Logo -->
			<button
				on:click={() => handleNavClick('#')}
				class="flex items-center gap-2 text-green-500 transition-colors hover:text-green-600"
			>
				<p class="h-8 w-8 object-contain text-3xl">🌳</p>
				<span class="text-xl font-bold">Dagpleje</span>
			</button>

			<!-- Desktop Menu -->
			<nav class="hidden space-x-8 md:flex">
				{#each navItems as item (item.href)}
					<button
						on:click={() => handleNavClick(item.href)}
						class="group relative font-medium text-gray-700 transition hover:text-green-500"
					>
						{item.label}
						<span class="absolute -bottom-1 left-0 h-0.5 w-0 bg-green-500 transition-all duration-300 group-hover:w-full"></span>
					</button>
				{/each}
			</nav>

			<!-- Mobile Menu Button -->
			<div class="md:hidden">
				<button
					on:click={() => (isMenuOpen = !isMenuOpen)}
					class="text-2xl text-gray-700 transition hover:text-green-500 focus:outline-none"
				>
					{#if isMenuOpen}
						✖
					{:else}
						☰
					{/if}
				</button>
			</div>
		</div>
	</div>

	<!-- Mobile Menu -->
	{#if isMenuOpen}
		<nav class="border-t bg-white/95 shadow-lg backdrop-blur-md md:hidden">
			{#each navItems as item (item.href)}
				<button
					on:click={() => handleNavClick(item.href)}
					class="block w-full border-b px-5 py-4 text-left font-semibold text-gray-700 transition hover:bg-green-50 hover:text-green-500"
				>
					{item.label}
				</button>
			{/each}
		</nav>
	{/if}
</header>