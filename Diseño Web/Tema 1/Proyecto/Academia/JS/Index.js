const desplegable = document.querySelector(".desplegable");
const navMenu = document.querySelector(".nav-menu");

desplegable.addEventListener("click",() => {
	desplegable.classList.toggle("active");
	navMenu.classList.toggle("active");
})
document.querySelectorAll(".nav-link").forEach(n=>n.
	addEventListener("click", () =>{
		desplegable.classList.remove("active");
}))