<script>
	import Canvas from '$lib/components/Canvas.svelte';
	import Icon from '@iconify/svelte';

	const isSSR = typeof window === 'undefined';
</script>

{#if !isSSR}
	<Canvas />
{/if}

<main>
	<h1>Paulo Eduardo Faversani</h1>
	<h2>Software Engineer</h2>

	<div id="links-group">
		<a href="https://github.com/pauloo27" target="_blank" rel="noopener noreferrer">
			<Icon icon="mdi:github" />
			<span>pauloo27</span>
		</a>
		<a href="mailto:p@ulo.dev" target="_blank" rel="noopener noreferrer">
			<Icon icon="mdi:email" />
			<span>p@ulo.dev</span>
		</a>
		<a href="https://linkedin.com/in/paulofaversani/" target="_blank" rel="noopener noreferrer">
			<Icon icon="mdi:linkedin" />
			<span>paulofaversani</span>
		</a>
	</div>
</main>

<style>
	main {
		height: 100vh;
		width: 100vw;
		background: transparent;

		text-align: center;

		padding: 100px;

		gap: 55px;

		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
	}

	h1,
	h2 {
		background-color: #c0ffee;
		color: #1a1a1a;
		padding: 10px 20px;
		border-radius: 10px;
	}

	h1 {
		font-size: 3.5rem;
	}

	h2 {
		font-size: 2.5rem;
	}

	#links-group {
		display: flex;
		flex-direction: column;
		background-color: rgba(26, 26, 26, 0.8);
		padding: 20px;
		border-radius: 10px;
	}

	a {
		color: #c0ffee;
		font-size: 2rem;
		text-decoration: none;
		display: flex;
		justify-content: center;
		align-items: center;
		gap: 5px;
		font-weight: bold;
	}

	a:hover,
	a:focus {
		color: #1a1a1a;
		background-color: #c0ffee;
	}

	@media (max-width: 768px) {
		main {
			padding: 20px;
		}

		h1 {
			font-size: 2.5rem;
		}

		h2 {
			font-size: 1.5rem;
		}

		a {
			font-size: 1.5rem;
		}
	}
</style>
