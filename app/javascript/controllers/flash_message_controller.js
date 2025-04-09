import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['close', 'container']

  connect() {
    setTimeout(() => {
      this.containerTarget.classList.remove("animate-bounce")
    }, 480)

    setTimeout(() => {
      this.close()
    }, 5000)
  }

  close () {
    this.containerTarget.classList.add("animate-pulse")
    setTimeout(() => {
      this.element.remove();
    }, 1300)
  }
}
