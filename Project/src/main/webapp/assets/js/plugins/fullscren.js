var elem = document.getElementById("full");
    function openFullscreen() {
      var fullbtn=document.getElementById("fullscrennbtn");

      if (elem.requestFullscreen) {
        elem.requestFullscreen();
        fullbtn.textContent = "Full Screen"
      } else if (elem.webkitRequestFullscreen) { /* Safari */
        elem.webkitRequestFullscreen();
        fullbtn.textContent = "Full Screen"
      } else if (elem.msRequestFullscreen) { /* IE11 */
        elem.msRequestFullscreen();
        fullbtn.textContent = "Full Screen"
      }
      if (document.exitFullscreen) {
        document.exitFullscreen();
        
      } else if (document.webkitExitFullscreen) { /* Safari */
        document.webkitExitFullscreen();
       
      } else if (document.msExitFullscreen) { /* IE11 */
        document.msExitFullscreen();
       
      }
    }