const clickCenter = () => {
  const submitButtons = document.querySelectorAll('.submit-button')
  const avatars = document.querySelectorAll('.av-js');
  submitButtons.forEach((button) => {
    if (button) {
      button.addEventListener('click', () => {
        avatars.forEach((avatar) => {
          if (avatar) {
            avatar.parentNode.parentNode.parentNode.classList.remove('taupe-background-color')
            if (avatar.dataset.id === button.dataset.id) {
              avatar.parentNode.parentNode.parentNode.classList.add('taupe-background-color')
              avatar.scrollIntoView({behavior: "smooth", inline: "center"});
            };
          };
        })
      });
    };
  })
};

const centerShow = () => {
  const treeShow = document.querySelector('.tree-show')
  const avatars = document.querySelectorAll('.av-js');
  const insideDiv = document.querySelector('#inside-div');
  if (treeShow) {
    avatars.forEach((avatar) => {
      if (avatar.dataset.id == treeShow.dataset.id) {
        avatar.parentNode.parentNode.parentNode.style.backgroundColor = '#9a8c98ff';
        insideDiv.style.zoom ='1.5'
        avatar.scrollIntoView({behavior: "smooth", inline: "center"});
      }
    });
  };
}

export {clickCenter, centerShow};
