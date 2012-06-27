$(document).ready(function () {

   var href = window.location.pathname;
		$("a:[href$='"+ href +"']").addClass("menu-active");
      
	$('#nav_sub li').hover(
		function () {
			//show its submenu
			$('ul', this).slideDown(100);

		}, 
		function () {
			//hide its submenu
			$('ul', this).slideUp(100);
		}
	);
   
});
