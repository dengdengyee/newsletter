import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["title", "body"]

  connect() {
    this.updatePreview()
  }

  updatePreview() {
    const templateId = this.element.querySelector("select").value
    const body = this.element.querySelector("textarea").value

    if (!templateId) return

    fetch(`/news_letters/preview?template_id=${templateId}&body=${encodeURIComponent(body)}`)
      .then(response => response.json())
      .then(data => {
        console.log(data)
        this.titleTarget.textContent = data.title
        this.bodyTarget.innerHTML = data.body
      })
  }
}
