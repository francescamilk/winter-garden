import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form"
export default class extends Controller {
  static targets = [ "plantform" ]

  popUp(event) {
    this.plantformTarget.classList.remove('hidden')
  }
}