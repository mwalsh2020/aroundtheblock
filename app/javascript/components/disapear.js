const disapearApplications = () => {
  const links = document.querySelectorAll(".approve-link");

  links.forEach((link) => {
    link.addEventListener('click', function(event) {
      event.target.style.display = 'none';

      // alert('You just approved an application!');
    });
  });
};

export { disapearApplications };
