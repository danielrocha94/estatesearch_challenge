import {Controller} from "@hotwired/stimulus"

// Connects to data-controller="turbo-modal"
export default class extends Controller {
  static targets = ['modal', 'button']

  open() {
    this.modalTarget.classList.remove("hidden")
  }

  close() {
    this.modalTarget.classList.add("hidden")
    // clean up modal content
    const frame = document.getElementById('modal')
    frame.removeAttribute("src")
    frame.innerHTML = ""
  }
}

