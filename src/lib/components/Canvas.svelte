<script lang="ts">
	import { onMount } from 'svelte';
	const isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(
		navigator.userAgent
	);

	let context: CanvasRenderingContext2D | null;
	let counter = 0;

	const draw = (e: MouseEvent | TouchEvent) => {
		if (!context) return;
		counter++;

		let x, y;

		if (e instanceof MouseEvent) {
			x = e.clientX;
			y = e.clientY;
		} else {
			x = e.touches[0].clientX;
			y = e.touches[0].clientY;
		}

		context.lineTo(x, y);
		context.lineWidth = 3.21;
		context.strokeStyle = `hsl(${counter / 10}, 100%, 50%)`;
		context.stroke();
	};

	onMount(() => {
		const body = document.querySelector('body')!;

		if (isMobile) body.ontouchmove = draw;
		else body.onmousemove = draw;

		const canvas = document.getElementById('canvas') as HTMLCanvasElement;

		const resize = () => {
			canvas.width = window.innerWidth;
			canvas.height = window.innerHeight;
		};

		body.onresize = resize;

		resize();

		context = canvas.getContext('2d')!;
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
