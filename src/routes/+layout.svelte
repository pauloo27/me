<script>
	import 'boxicons/css/boxicons.min.css';
	import './fonts.css';
	import './layout.css';
	import Header from '$lib/components/header.svelte';
	import { applyTheme, loadTheme } from '$lib/theme';

	let isSSR = typeof window === 'undefined';

	if (isSSR) {
		applyTheme('dark');
	} else {
		loadTheme();
	}
</script>

<Header />
<slot />
