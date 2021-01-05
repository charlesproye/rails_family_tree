const changeSize = () => {
  const treeWidth = document.querySelector('#tree-width');
  const insideDiv = document.querySelector('#inside-div');
  const tree = document.querySelector('.tree');
  if (treeWidth) {
    tree.addEventListener('scroll', () =>{
      const wid = treeWidth.offsetWidth;
      insideDiv.style.width = `${treeWidth.offsetWidth + 150}px`;
    } )
  };
}


const zoomInOut = () => {
  const insideDiv = document.querySelector('#inside-div');
  const zoomIn = document.querySelector('#zoom-in');
  const zoomOut = document.querySelector('#zoom-out');
  if (zoomIn) {
    zoomIn.addEventListener('click', () =>{
      let zoomCurrentValue = getComputedStyle(insideDiv).getPropertyValue('zoom')
      console.log(parseFloat(zoomCurrentValue));
      insideDiv.style.zoom = parseFloat(zoomCurrentValue,0.1) + .15
      console.log(getComputedStyle(insideDiv).getPropertyValue('zoom'));
    } );
  };
  if (zoomOut) {
    zoomOut.addEventListener('click', () =>{
      let zoomCurrentValue = getComputedStyle(insideDiv).getPropertyValue('zoom')
      console.log(parseFloat(zoomCurrentValue));
      insideDiv.style.zoom = parseFloat(zoomCurrentValue,0.1) - .15
      console.log(getComputedStyle(insideDiv).getPropertyValue('zoom'));
    } );
  };
}


export { changeSize, zoomInOut };
