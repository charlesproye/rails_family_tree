const changeSize = () => {
  const treeWidth = document.querySelector('#tree-width');
  const insideDiv = document.querySelector('#inside-div');
  const tree = document.querySelector('.tree');
  console.log(insideDiv)
  if (treeWidth) {
    tree.addEventListener('scroll', () =>{
      const wid = treeWidth.offsetWidth;
      console.log(insideDiv.offsetWidth);
      insideDiv.style.width = `${treeWidth.offsetWidth + 150}px`;
      console.log(insideDiv.offsetWidth);
    } )
  };
}


export { changeSize };
