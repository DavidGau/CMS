tinymce.init({
	selector: 'header p.info_restaurant,h1,.partie_promotion p,.partie_promotion ul,h2,.box_modif,h3,.bloc_nouveau p,.bloc_menu p,footer .bloc_centre p,section article div:nth-child(2)',
	inline: true,
	toolbar: 'bold|italic|underline|strikethrough|styleselect|formatselect|fontselect',
	menu: {
		view: {title: 'format', items: 'bold, italic, underline, strikethrough'}
	},
	init_instance_callback: function (editor) {

		editor.on('blur', function (e) {
			sauvegarde_temporaire();
		});
	}

	});