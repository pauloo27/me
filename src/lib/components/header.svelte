<script>
	import { toggleTheme } from '$lib/theme';
</script>

<header>
	<nav>
		<a href="/">Home</a>
		<a rel="noopener noreferrer" target="_blank" href="https://faze.ndo.cafe">Blog</a>
		<a rel="noopener noreferrer" target="_blank" href="https://www.linkedin.com/in/paulofaversani/">
			Linkedin
		</a>
		<a rel="noopener noreferrer" target="_blank" href="https://github.com/pauloo27">Github</a>
	</nav>
	<button on:click={toggleTheme}><i class="bx bx-bulb" /></button>
</header>

<style>
	header {
		padding: 20px 50px;
		border-bottom: 1px solid var(--border);
		display: flex;
		justify-content: space-between;
	}

	nav {
		display: flex;
		gap: 20px;
	}

	a {
		color: var(--foreground);
		text-decoration: none;
		font-weight: 500;
	}
</style>
