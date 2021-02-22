

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
              avatar.scrollIntoView({behavior: "smooth", inline: "center", block: 'center'});
            };
          };
        })
      });
    };
  })
};


export {clickCenter};
