const host = window.external.Application;
const inDebug = true;

function CloseWindow(){
    //GuidA
    host.FrameWork.HideDialog("39f3b36a-01c6-4889-aba9-7dc3c999c76e");
}

function init()
{
    let btn =  document.getElementById('btn');
    btn.addEventListener("click",btnClickHandle);
}

function btnClickHandle()
{
    if(host.ActiveDocument===null);
        host.CreateDocument();
       
    let columns = document.getElementById('c').value;
    let rows = document.getElementById('r').value;
    CreateRectangleGrid(columns,rows);
    CloseWindow();
        
   
}
function handleResize() {
  
    let windowHeight = window.innerHeight;
    let windowWidth = window.innerWidth;
    let d = document.getElementById('size-debugger');
    d.textContent = windowWidth+" x "+windowHeight;

  }
  

  window.addEventListener('resize', handleResize);
  document.addEventListener("DOMContentLoaded",init);
  handleResize();