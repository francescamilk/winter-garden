// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"

    const banner = document.getElementById('banner');
    const arrowRight = document.getElementById('right');
    
    arrowRight.addEventListener('click', (e) => {
        banner.classList.add('newImage')
    });

