// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
// import "@rails/ujs";
// Rails.start();

// Update Rails UJS import to use the local version
// import * as Rails from "../assets/javascripts/jquery_ujs";
// Rails.start();

// Removed redundant jQuery import as it is included via the CDN in the layout file

// Attach jQuery to the global window object
window.$ = window.jQuery = $;

// Add error handling and ensure proper reinitialization of Semantic UI dropdowns
document.addEventListener("turbo:load", () => {
  if (typeof $ !== "undefined" && $.fn.dropdown) {
    console.log("Initializing Semantic UI dropdowns...");
    $('.ui.dropdown').dropdown();
    $('.message .close').on('click', function() {
      $(this).closest('.message').transition('fade');
    });
  } else {
    console.error("jQuery or Semantic UI is not loaded. Ensure jQuery is included before Semantic UI.");
  }
});


import "./channels"
