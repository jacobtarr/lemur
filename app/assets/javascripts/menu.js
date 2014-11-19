// -----------------------------
// menu.js
// -----------------------------

$(function responsiveHomeMenu(){

	// Store content nodes in DOM
	var $menuIcon = $('.home-header-content__nav--mobile-menu .fa');
	var $menuList = $('.home-header-content__nav--mobile-menu ul');

	// Toggle menu with icon
	$menuIcon.bind("click", function(){
		$menuIcon.toggle();
		$menuList.slideToggle(300);
	});

});