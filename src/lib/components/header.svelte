<script>
	import { toggleTheme } from '$lib/theme';

	const links = [
		{
			name: 'Home',
			path: '/'
		},
		{
			name: 'Blog',
			path: 'https://faze.ndo.cafe',
			extern: true
		},
		{
			name: 'Linkedin',
			path: 'https://www.linkedin.com/in/paulofaversani/',
			extern: true
		},
		{
			name: 'Github',
			path: 'https://github.com/pauloo27',
			extern: true
		}
	];

	let isMenuOpen = false;
</script>

<header id="full">
	<nav>
		{#each links as link}
			{#if link.extern}
				<a rel="noopener noreferrer" target="_blank" href={link.path}>{link.name}</a>
			{:else}
				<a href={link.path}>{link.name}</a>
			{/if}
		{/each}
	</nav>
	<button on:click={toggleTheme}><i class="bx bx-bulb" /></button>
</header>

<header id="minimal">
	<div id="minimal-buttons">
		<button on:click={() => (isMenuOpen = !isMenuOpen)}><i class="bx bx-menu" /></button>
		<button on:click={toggleTheme}><i class="bx bx-bulb" /></button>
	</div>
	{#if isMenuOpen}
		<nav>
			{#each links as link}
				{#if link.extern}
					<a rel="noopener noreferrer" target="_blank" href={link.path}>{link.name}</a>
				{:else}
					<a href={link.path}>{link.name}</a>
				{/if}
			{/each}
		</nav>
	{/if}
</header>

<style>
	header {
		padding: 20px 50px;
		border-bottom: 1px solid var(--border);
		display: flex;
		justify-content: space-between;
	}

	#minimal {
		display: none;
		padding: 10px 20px;
		flex-direction: column;
	}

	#minimal-buttons {
		display: flex;
		justify-content: space-between;
	}

	nav {
		display: flex;
		gap: 20px;
	}

	#minimal > nav {
		flex-wrap: wrap;
		margin: 5px 0;
	}

	a {
		color: var(--foreground);
		text-decoration: none;
		font-weight: 500;
	}

	@media (max-width: 768px) {
		#minimal {
			display: flex;
		}

		#full {
			display: none;
		}
	}
</style>
