<script lang="ts">
	import logo from '$lib/assets/favicon.svg';

  function scrollToContact(): void {
    document.getElementById('kontakt')?.scrollIntoView({ behavior: 'smooth' });
  }
</script>

<section class="relative h-[600px] flex items-center justify-center overflow-hidden">
  <img
    src="https://images.unsplash.com/photo-1774641374101-0c5a243b7e7e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3Nzg4Nzd8MHwxfHNlYXJjaHwxfHxoYXBweSUyMGNoaWxkcmVuJTIwcGxheWluZyUyMGRheWNhcmV8ZW58MXx8fHwxNzc2NzkwNTA5fDA&ixlib=rb-4.1.0&q=80&w=1080"
    alt="Glade børn der leger"
    class="absolute inset-0 w-full h-full object-cover"
  />

  <div class="absolute inset-0 bg-black/40"></div>

  <div class="relative z-10 text-center text-white px-4 max-w-4xl mx-auto">
  <p class="w-16 h-16 mx-auto mb-6 text-3xl">🌳</p>
    <h1 class="text-5xl md:text-6xl font-bold mb-6">
      Velkommen til Solstråle Dagpleje
    </h1>
    <p class="text-xl md:text-2xl mb-8">
      Et trygt og kærligt hjem for dit barn
    </p>
    <button
      on:click={scrollToContact}
      class="bg-green-500 hover:bg-green-600 text-white px-8 py-6 text-lg rounded-md transition-colors"
    >
      Kontakt mig
    </button>
  </div>
</section>