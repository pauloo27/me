<script lang="ts">
	import { onMount } from 'svelte';

	let context: CanvasRenderingContext2D | null;
	let counter = 0;

	const draw = (e: MouseEvent) => {
		if (!context) return;
		counter++;

		context.lineTo(e.clientX, e.clientY);
		context.strokeStyle = `hsl(${counter / 10}, 100%, 50%)`;
		context.stroke();
	};

	onMount(() => {
		const body = document.querySelector('body')!;
		body.onmousemove = draw;

		const canvas = document.getElementById('canvas') as HTMLCanvasElement;

		const resize = () => {
			canvas.width = window.innerWidth;
			canvas.height = window.innerHeight;
		};

		body.onresize = resize;

		resize();

		context = canvas.getContext('2d')!;
		context.lineWidth = 3.21;
		context.lineJoin = 'round';
		context.lineCap = 'round';
	});
</script>

<canvas id="canvas" />

<style>
	canvas {
		position: absolute;
		z-index: -1;
	}
</style>
