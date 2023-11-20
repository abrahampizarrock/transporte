// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener('DOMContentLoaded', function() {
    const textoAnimado1 = document.querySelector('.texto-animado1');
    const textoAnimado2 = document.querySelector('.texto-animado2');
  
    textoAnimado1.addEventListener('animationend', function() {
      this.style.display = 'none'; // Oculta el elemento
      this.remove(); // Elimina el elemento del DOM
    });
  
    textoAnimado2.addEventListener('animationend', function() {
      this.style.display = 'none'; // Oculta el elemento
      this.remove(); // Elimina el elemento del DOM
    });
  });
  