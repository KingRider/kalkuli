/*
 * Translated default messages for the jQuery validation plugin.
 * Locale: FR
 */
jQuery.extend(jQuery.validator.messages, {
        required: '<span class="ui-icon ui-icon-alert"></span> Ce champ est requis.',
        remote: '<span class="ui-icon ui-icon-alert"></span> Veuillez remplir ce champ pour continuer.',
        email: '<span class="ui-icon ui-icon-alert"></span> Veuillez entrer une adresse email valide.',
        url: '<span class="ui-icon ui-icon-alert"></span> Veuillez entrer une URL valide.',
        date: '<span class="ui-icon ui-icon-alert"></span> Veuillez entrer une date valide.',
        dateISO: '<span class="ui-icon ui-icon-alert"></span> Veuillez entrer une date valide (ISO).',
        number: '<span class="ui-icon ui-icon-alert"></span> Veuillez entrer un nombre valide.',
        digits: '<span class="ui-icon ui-icon-alert"></span> Veuillez entrer (seulement) une valeur num�rique.',
        creditcard: '<span class="ui-icon ui-icon-alert"></span> Veuillez entrer un num�ro de carte de cr�dit valide.',
        equalTo: '<span class="ui-icon ui-icon-alert"></span> Veuillez entrer une nouvelle fois la m�me valeur.',
        accept: '<span class="ui-icon ui-icon-alert"></span> Veuillez entrer une valeur avec une extension valide.',
        maxlength: jQuery.validator.format('<span class="ui-icon ui-icon-alert"></span> Veuillez ne pas entrer plus de {0} caract�res.'),
        minlength: jQuery.validator.format('<span class="ui-icon ui-icon-alert"></span> Veuillez entrer au moins {0} caract�res.'),
        rangelength: jQuery.validator.format('<span class="ui-icon ui-icon-alert"></span> Veuillez entrer entre {0} et {1} caract�res.'),
        range: jQuery.validator.format('<span class="ui-icon ui-icon-alert"></span> Veuillez entrer une valeur entre {0} et {1}.'),
        max: jQuery.validator.format('<span class="ui-icon ui-icon-alert"></span> Veuillez entrer une valeur inf�rieure ou �gale � {0}.'),
        min: jQuery.validator.format('<span class="ui-icon ui-icon-alert"></span> Veuillez entrer une valeur sup�rieure ou �gale � {0}.'),

		// Custom messages
		minStrict: jQuery.validator.format('<span class="ui-icon ui-icon-alert"></span> Veuillez entrer une valeur sup�rieure � {0}.')
});