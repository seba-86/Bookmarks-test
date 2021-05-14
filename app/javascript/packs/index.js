document.addEventListener("DOMContentLoaded", ()=> {

    document.querySelector('#titulo').addEventListener('click',function () { 
        console.log('test')
         
    })

    function ocultar() {
        var ocultar = document.getElementById('canvas')
        var boton = document.querySelector('.boton');
        boton.addEventListener('click', function () {
            if(ocultar.style.display === 'none') {
                ocultar.style.display = "block";
                
            } else {
                ocultar.style.display = "none"
            }
            
        })
        boton.addEventListener('click', function() {
            this.innerHTML = " ;)"
        })
           
    }
    ocultar()

    
    
});

