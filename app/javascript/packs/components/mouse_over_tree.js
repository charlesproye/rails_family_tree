

const mouseOverTree = () => {
  const avatars = document.querySelectorAll('.av-js');
  if (avatars) {
    avatars.forEach((avatar) => {
      avatar.addEventListener('mouseenter', () => {
        const box = document.querySelector('.box');
        const firstName = avatar.dataset.firstname.charAt(0).toUpperCase() + avatar.dataset.firstname.slice(1)
        const firstNameLetter = firstName.charAt(0).toUpperCase()
        const lastName = avatar.dataset.lastname.charAt(0).toUpperCase() + avatar.dataset.lastname.slice(1)
        const lastNameLetter = lastName.charAt(0).toUpperCase()
        const job = avatar.dataset.job
        const birthDate = avatar.dataset.birthdate
        const age = avatar.dataset.age
        //cloudinary.imageTag('front_face.png', {secure: true}).toHtml();
        box.innerHTML = `
          <div class="avatar-family default text-center">
            ${firstNameLetter}${lastNameLetter}
          </div>
            <p class='mt-2 blanc-color'>${firstName} ${lastName}</p>
            <p class='mt-2 blanc-color'>${birthDate} (${age} ans)</p>
            <p class='mt-2 blanc-color'>${job}</p>
        `
      });

      avatar.addEventListener('mouseleave', () => {
        const box = document.querySelector('.box');
        const family = avatar.dataset.family.toUpperCase();
        box.innerHTML = `
        <h2 class='blanc-color text-center mt-5'>Famille ${family}</h2>
        `
      });
    });
  };
};

export {mouseOverTree};
