import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  ask(event) {
    if (!confirm(this.data.get("message") || "Are you sure?")) {
      event.preventDefault();
    }
  }
}
