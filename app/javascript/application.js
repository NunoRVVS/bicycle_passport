// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"


import { Application } from "@hotwired/stimulus";


Stimulus = Application.start();

import RideCreationController from "./controllers/ride_creation_controller.js";
Stimulus.register("ride-creation", RideCreationController);
