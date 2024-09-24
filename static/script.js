// Scroll to Top Button
const scrollTopBtn = document.createElement("button");
scrollTopBtn.id = "scrollTop";
scrollTopBtn.innerHTML = "↑";
document.body.appendChild(scrollTopBtn);

// Show the button when scrolling down
window.onscroll = function() {
    if (document.body.scrollTop > 300 || document.documentElement.scrollTop > 300) {
        scrollTopBtn.style.display = "block";
    } else {
        scrollTopBtn.style.display = "none";
    }
};

// Scroll to top when button is clicked
scrollTopBtn.addEventListener("click", function() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
});
