// app/javascript/controllers/map_controller.js
import { Controller } from "@hotwired/stimulus"
import L from "leaflet"

export default class extends Controller {
  static targets = ["map"]

  connect() {
    // Inicializar o mapa
    const map = L.map(this.mapTarget).setView([51.505, -0.09], 13)

    // Adicionar tiles do OpenStreetMap
    L.tileLayer("https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png", {
      attribution: '© OpenStreetMap contributors'
    }).addTo(map)

    // Adicionar marcadores para os pontos de partida e chegada
    const startPoint = [51.505, -0.09] // Substitua com coordenadas reais
    const endPoint = [51.51, -0.1] // Substitua com coordenadas reais

    L.marker(startPoint).addTo(map).bindPopup("Start Point").openPopup()
    L.marker(endPoint).addTo(map).bindPopup("End Point")
  }
}
