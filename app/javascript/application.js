// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// Removed redundant jQuery import as it is included via the CDN in the layout file

// Attach jQuery to the global window object
window.$ = window.jQuery = $;

// Ensure Semantic UI dropdowns are initialized after Turbo loads
document.addEventListener("turbo:load", () => {
  console.log("jQuery version:", typeof jQuery !== "undefined" ? jQuery.fn.jquery : "jQuery not loaded");
  console.log("Semantic UI dropdown available:", typeof $.fn.dropdown !== "undefined");

  if (typeof $ !== "undefined" && typeof $.fn.dropdown !== "undefined") {
    $('.ui.dropdown').dropdown();
  } else {
    console.error("jQuery or Semantic UI dropdown is not loaded properly.");
  }
});


