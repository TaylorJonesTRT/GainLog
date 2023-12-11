import { createInertiaApp } from "@inertiajs/svelte";
import { InertiaProgress } from "@inertiajs/progress";

document.addEventListener("DOMContentLoaded", () => {
  const csrfToken = document.querySelector("meta[name=csrf-token]").content;
  axios.defaults.headers.common["X-CSRF-Token"] = csrfToken;

  InertiaProgress.init();

  createInertiaApp({
    resolve: (name) => {
      const pages = import.meta.glob("../pages/**/*.svelte", { eager: true });
      return pages[`../pages/${name}.svelte`];
    },
    setup({ el, App, props }) {
      new App({ target: el, props });
    },
  });
});
