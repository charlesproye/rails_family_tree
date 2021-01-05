const mouseOverTree = () => {
  const avatars = document.querySelectorAll('.av-js');
  if (avatars) {
    avatars.forEach((avatar) => {
      avatar.addEventListener('mouseenter', () => {
        const box = avatar.getElementsByTagName('div')[0]
        box.classList.remove('d-none');
      });

      avatar.addEventListener('mouseleave', () => {
        const box = avatar.getElementsByTagName('div')[0]
        box.classList.add('d-none');
      });
    });
  };
};

export {mouseOverTree};
