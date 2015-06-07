var columnHeight = function () {
	$('body.pages.home > .columns').height($(window).height());
};

$(document).ready(columnHeight);
$(window).resize(columnHeight);