import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = [ "form" ]
  connect() {
    console.log("BattleCruiser operational")
  }

  grabCreation(e) {
    e.preventDefault()
    console.log("stopped it")
    // console.log(e)
    // console.log(e)
    const form = e["explicitOriginalTarget"]
    console.log(form)
  
  }
}
