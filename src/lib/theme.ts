type Theme = 'dark' | 'light';

let currentTheme = 'dark';

export function loadTheme() {
	const darkModePreference = window.matchMedia('(prefers-color-scheme: dark)');
	applyTheme(darkModePreference.matches ? 'dark' : 'light');
}

export function applyTheme(theme: Theme) {
	if (typeof window === 'undefined') return;
	if (theme === currentTheme) return;

	currentTheme = theme;

	if (theme === 'dark') {
		document.body.classList.remove('light');
	} else {
		document.body.classList.add('light');
	}
}

export function toggleTheme() {
	const theme = currentTheme === 'dark' ? 'light' : 'dark';
	applyTheme(theme);
}
