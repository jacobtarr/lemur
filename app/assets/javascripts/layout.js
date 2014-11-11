// -----------------------------
// layout.js
// -----------------------------

// Configure FitText for responsive text
$(function fitTextConfig(){
	$(".home-header-content__callout h1").fitText(1.3, {
		minFontSize: '28px',
		maxFontSize: '72px'
	});
	$(".home-header-content__callout p").fitText(2.2, {
		minFontSize: '18px',
		maxFontSize: '36px'
	});
	$(".home-feature-content__top p, .home-newsletter-content p").fitText(3, {
		minFontSize: '16px',
		maxFontSize: '20px'
	});
	$(".home-feature-content__bottom--text h2").fitText(2, {
		minFontSize: '24px',
		maxFontSize: '32px'
	});
});