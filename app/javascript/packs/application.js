import "bootstrap";
import "jquery";
import "popper.js";



// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
//= require jquery3
//= require popper
//= require bootstrap

//= require rails-ujs
//= require activestorage

//= require_tree .

import Rails from "@rails/ujs";
Rails.start();

require("@rails/ujs").start();
require("@rails/activestorage").start();
require("channels");
