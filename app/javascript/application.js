// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@rails/ujs";

// The bellow code (even though it looks commented out) is what is making the code run correctly when it comes to makeing JS calls
// to either delete or update
//= require rails-ujs
