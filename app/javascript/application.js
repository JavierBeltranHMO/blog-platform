import "@hotwired/turbo-rails";
import { Application } from "@hotwired/stimulus";
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading";
import "trix";
import "@rails/actiontext";

const application = Application.start();
eagerLoadControllersFrom("controllers", application);

window.Stimulus = Application.start();
