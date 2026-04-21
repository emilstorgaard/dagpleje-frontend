<script lang="ts">
	import Header from '$lib/components/Header.svelte';
	import Hero from '$lib/components/Hero.svelte';
    import About from '$lib/components/About.svelte';
    import Activities from '$lib/components/Activities.svelte';
    import Schedule from '$lib/components/Schedule.svelte';
    import Testimonials from '$lib/components/Testimonials.svelte';
    import Contact from '$lib/components/Contact.svelte';
    import Footer from '$lib/components/Foorter.svelte';
</script>

<div class="min-h-screen">
	<Header />
	<main>
        <Hero />
        <About />
        <Activities />
        <Schedule />
        <Testimonials />
        <Contact />
    </main>
    <Footer />
</div>
