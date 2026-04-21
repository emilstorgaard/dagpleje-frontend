<script lang="ts">
	import logo from '$lib/assets/favicon.svg';

	let isMenuOpen: boolean = false;

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

<header class="sticky top-0 z-50 bg-white shadow-md">
	<div class="mx-auto max-w-7xl px-4">
		<div class="flex h-16 items-center justify-between">
			<button
				on:click={() => handleNavClick('#')}
				class="flex items-center gap-2 text-pink-500 transition-colors hover:text-pink-600"
			>
				<img src={logo} alt="Solstråle Dagpleje logo" class="h-8 w-8 object-contain" />
				<span class="text-xl font-bold">Solstråle Dagpleje</span>
			</button>

			<!-- Desktop Menu -->
			<div class="hidden items-center gap-6 md:flex">
				{#each navItems as item (item.href)}
					<button
						on:click={() => handleNavClick(item.href)}
						class="text-gray-700 transition-colors hover:text-pink-500"
					>
						{item.label}
					</button>
				{/each}
			</div>

			<!-- Mobile Menu Button -->
			<button
				title="Menu"
				type="button"
				class="rounded p-2 transition-colors hover:bg-gray-100 md:hidden"
				aria-expanded={isMenuOpen}
				on:click={() => (isMenuOpen = !isMenuOpen)}
			>
				{#if isMenuOpen}
					<svg class="h-6 w-6" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
						<path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd" />
					</svg>
				{:else}
					<svg class="h-6 w-6" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
						<path fill-rule="evenodd" d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z" clip-rule="evenodd" />
					</svg>
				{/if}
			</button>
		</div>
	</div>

	<!-- Mobile Menu Overlay + Drawer -->
	{#if isMenuOpen}
		<div class="md:hidden" role="dialog" aria-modal="true">
			<!-- Backdrop -->
			<div
				class="fixed inset-0 z-[60] bg-black bg-opacity-50"
				on:click={() => (isMenuOpen = false)}
			></div>

			<!-- Drawer -->
			<div class="fixed inset-y-0 right-0 z-[70] w-full max-w-xs overflow-y-auto bg-white px-6 py-6 shadow-lg">
				<div class="mb-6 flex items-center justify-between">
					<span class="text-lg font-bold text-pink-500">Solstråle Dagpleje</span>
					<button
						title="Luk menu"
						type="button"
						class="rounded p-2 transition-colors hover:bg-gray-100"
						on:click={() => (isMenuOpen = false)}
					>
						<svg class="h-6 w-6" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
							<path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd" />
						</svg>
					</button>
				</div>

				<div class="flex flex-col gap-4">
					{#each navItems as item (item.href)}
						<button
							on:click={() => handleNavClick(item.href)}
							class="border-b border-gray-100 py-2 text-left text-gray-700 transition-colors hover:text-pink-500"
						>
							{item.label}
						</button>
					{/each}
				</div>
			</div>
		</div>
	{/if}
</header>