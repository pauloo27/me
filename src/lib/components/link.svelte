<script>
	export let href;
</script>

<a rel="noopener noreferrer" target="_blank" {href}
	><slot /> <i class="bx bx-link-external bx-xs" /></a
>

<style>
	a {
		color: var(--accent-foreground);
		text-decoration: none;
		border-bottom: 1px solid var(--accent-foreground);
	}
</style>
