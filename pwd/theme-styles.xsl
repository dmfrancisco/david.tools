<x:transform
  version="1.0"
  xmlns:x="http://www.w3.org/1999/XSL/Transform"
  xmlns:pwd="pwd"
>
  <x:template match="pwd:theme-styles">
    <style>
      body {
        position: relative;
        isolation: isolate;
      }
      body::before {
        content: "";
        position: absolute;
        inset: 0 0 auto;
        height: clamp(24rem, 60vw, 42rem);
        z-index: -1;
        pointer-events: none;
        background:
          radial-gradient(
            ellipse 45% 70% at 95% 0%,
            rgb(255 177 132 / 22%),
            transparent 75%
          ),
          radial-gradient(
            ellipse 55% 80% at 70% -15%,
            rgb(142 117 255 / 28%),
            transparent 75%
          ),
          radial-gradient(
            ellipse 45% 65% at 35% 0%,
            rgb(99 218 235 / 20%),
            transparent 75%
          );
      }
    </style>
  </x:template>
</x:transform>
