window.addEventListener('message', function(event) {
    if (event.data.action === "updateTime") {
        // Animationspause für fließende Übergänge
        const timeElement = document.getElementById('time');
        timeElement.classList.add('animate-time');
        
        setTimeout(() => {
            timeElement.textContent = event.data.time;
            timeElement.classList.remove('animate-time');
        }, 200);  // Animation dauert 200ms
    }
});
