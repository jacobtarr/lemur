// -----------------------------
// menu.js
// -----------------------------

$(function responsiveHomeMenu(){
	// Store content nodes in DOM
	var $menuIcon = $('.home-header-content__nav--mobile-menu .fa');
	var $menuList = $('.home-header-content__nav--mobile-menu ul');

	// Hide menu links by default
	$menuList.hide();

	// Toggle menu with icon
	$menuIcon.on("click", function(){
		$menuIcon.toggle();
		$menuList.slideToggle(300);
	});
});