const disapearApplications = () => {
  const links = document.querySelectorAll(".approve-link");

  links.forEach((link) => {
    link.addEventListener('click', function(event) {

      alert('approved!');
    });
  });

};

export { disapearApplications };
