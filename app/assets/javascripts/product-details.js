// // Modal Js
// const modal = document.querySelector(".modal");
// const trigger = document.querySelector(".trigger");
// const closeButton = document.querySelector(".close-button");

// function toggleModal() {
// 	// console.log(modal.classList)
// 	$(this).addClass('show-modal');
// }
// function windowOnClick(event) {
// 	if (event.target === modal) {
// 		// console.log(event);
// 		toggleModal();
// 	}
// }
// function escapeBtn(event){
// 	// console.log(event.key)
// 	if(event.key === 'Escape' && modal.classList.contains('show-modal')){
// 		toggleModal();
// 	}	
// }

// trigger.addEventListener("click", toggleModal);
// closeButton.addEventListener("click", toggleModal);
// window.addEventListener("click", windowOnClick);
// window.addEventListener("keydown", escapeBtn);

$('.trigger, .close-button').click(function () {
	$('.modal').toggle();
})