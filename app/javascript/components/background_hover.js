const mouseoverPosting = () => {
  const postings = document.querySelectorAll(".postig-mouseover");

  postings.forEach((posting) => {
    posting.addEventListener('mouseover', function(event) {
      // event.target.style.backgroundColor = "#F4F4F4";
    });

    posting.addEventListener('mouseout', function(event) {
      // event.target.style.backgroundColor = "";
    });
  });
};

export { mouseoverPosting };
