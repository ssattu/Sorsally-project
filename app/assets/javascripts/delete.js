
  var deleteButton = document.querySelectorAll(".delete-btn");
	  for (var i = 0; i < deleteButton.length; i++){
		  	deleteButton[i].addEventListener("click", function(e) {
		    	// console.log('FUNC');
		    	if (confirm("Are you sure?")) {
			    	// console.log('Delete');
		    	}
		    	else {
		    		e.preventDefault();
		    		e.stopImmediatePropagation();
			    	// console.log('DONT DELETE');
		    	}

		  	});
	  	}
