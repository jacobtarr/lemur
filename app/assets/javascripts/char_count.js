// -----------------------------
// Character Count
// -----------------------------

function charCount() {
	var micropostHeadlineInput = $('#micropost_headline');
	var contentInput = $('#micropost_content');

	micropostHeadlineInput.simplyCountable({
		counter: '#char-count__headline',
		countType: 'characters',
		maxCount: 50,
		overClass: 'char-count--danger',
		strictMax: false,
		countDirection: 'down'
	});

	contentInput.simplyCountable({
		counter: '#char-count__content',
		countType: 'characters',
		maxCount: 160,
		overClass: 'char-count--danger',
		strictMax: false,
		countDirection: 'down'
	});

}

$(function charCountInit() {
	charCount();
});