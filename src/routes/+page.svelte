<script>
	import Link from '$lib/components/link.svelte';
</script>

<main>
	<div id="title">
		<p>Hi there <span id="hand">👋</span></p>
		<h1 class="accent">Paulo Eduardo</h1>
		<h2>Software Engineer @ Encora Brazil</h2>
	</div>
	<div id="introduction">
		<p>
			Welcome! I'm a backend developer from Brazil, working at Encora Brazil. With a solid
			foundation in Software Engineering, courtesy of my Bachelor's degree from the Federal
			University of Technology - Paraná.
		</p>
		<p>
			My journey started with Java, but I've been working with Node.js and Go for the past few
			years. I'm passionate about building scalable and maintainable systems. I've worked with some
			Brazilian startups and companies, such as Southrock Lab, where I developed and managed the
			service for the virtual assets of Starbucks Brazil's loyalty system.
		</p>
		<p>
			You can see some of my personal projects on
			<Link href="https://github.com/pauloo27">Github</Link>. For collaborations, insights, or just
			to say hi, feel free to connect with me on
			<Link href="https://www.linkedin.com/in/paulofaversani/">Linkedin</Link>
			or
			<Link href="mailto:p@ulo.dev">E-mail</Link>.
		</p>
	</div>
</main>

<style>
	main {
		padding: 2rem;
		max-width: 48rem;
		gap: 50px;
		margin: 0 auto;
		display: flex;
		flex-direction: column;
		justify-content: center;
	}

	#hand {
		display: inline-block;
		animation: wave 2s infinite;
	}

	#title {
		display: flex;
		flex-direction: column;
	}

	.accent {
		color: var(--accent-foreground);
	}

	#introduction {
		display: flex;
		flex-direction: column;
		gap: 20px;
	}

	p {
		font-size: 1.2em;
	}

	@media (max-width: 768px) {
		main {
			padding: 20px;
		}
	}

	@keyframes wave {
		0%,
		100% {
			transform: rotate(0deg);
		}
		75% {
			transform: rotate(-45deg);
		}
	}
</style>
