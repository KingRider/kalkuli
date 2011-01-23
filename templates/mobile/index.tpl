<div data-role="page" id="index">
	<div data-role="header">
		<h1>/kal.'ku.li/</h1>
	</div>
	<div data-role="content">
		<p>Vacances, collocations, soir�es... Tenez les comptes en toute simplicit� et en toute transparence entre les participants.</p>
		<p>Saisissez simplement les d�penses effectu�es au titre du groupe et visualisez imm�diatement le solde de chaque participant.</p>
		<p>Vous pouvez cr�er d�s maintenant, simplement et gratuitement une feuille de compte sans vous enregistrer sur le site. Un email vous sera envoy� pour vous communiquer l'adresse unique et priv�e de votre feuille de compte.</p>
		<a href="#createSheetPage" data-role="button">Cr�er une feuille de compte</a> 
		<a href="#retrieveSheetPage" data-role="button">Retrouver ses feuilles de compte</a>
	</div>
</div>

<div data-role="page" id="createSheetPage">
	<div data-role="header">
		<h1>Cr�ation d'une feuille de compte</h1>
	</div>
	<div data-role="content">
		<form action="{$CONTEXT_PATH}/" id="createSheetForm" name="createSheetForm" method="post">
			<input type="hidden" name="createSheetButton" value="createSheetButton" />
			<div data-role="fieldcontain">
				<label for="sheetName">Nom de la feuille de compte&nbsp;:</label>
				<input id="sheetName" maxlength="255" name="sheetName" type="text" />
				<div class="formValidationMessage" id="sheetNameFormValidationMessage"></div>
			</div>
			<div data-role="fieldcontain">
				<label for="currencyCode" class="select">Devise&nbsp;:</label>
				<select id="currencyCode" name="currencyCode">
					{foreach from=$currencyOptionList item="currencyLabel" key="currencyCode"}
						<option value="{$currencyCode}">{$currencyLabel}</option>
					{/foreach}
				</select>
			</div>
			<div data-role="fieldcontain">
				<label for="creatorEmail">Email de rattachement&nbsp;:</label>
				<input id="creatorEmail" maxlength="255" name="creatorEmail" type="email" />
				<div class="formValidationMessage" id="creatorEmailFormValidationMessage"></div>
			</div>
			<button type="submit" data-theme="a">Cr�er</button>
		</form>
	</div>
</div>

<div data-role="page" id="retrieveSheetPage">
	<div data-role="header">
		<h1>Retrouver ses feuilles de compte</h1>
	</div>
	<p>Saisissez l'adresse email que vous avez utilis�e pour cr�er vos feuilles de compte. Un email vous sera imm�diatement envoy� avec la liste des feuilles de compte qui y sont rattach�es.</p>
	<div data-role="content">
		<form action="{$CONTEXT_PATH}/" id="retrieveSheetsForm" name="retrieveSheetsForm" method="post">
			<input type="hidden" name="retrieveSheetButton" value="retrieveSheetButton" />
			<div data-role="fieldcontain">
				<label for="retrieveEmail">Email de rattachement&nbsp;:</label>
				<input id="retrieveEmail" maxlength="255" name="retrieveEmail" type="email" />
				<div class="formValidationMessage" id="retrieveEmailFormValidationMessage"></div>
			</div>
			<button type="submit" data-theme="a">Envoyer</button>
		</form>
	</div>
</div>

<script src="{$CONTEXT_PATH}/js/index.js" type="text/javascript"></script>
{literal}
<script type="text/javascript">
	$(function() {
		$('#createSheetForm').validate({
			errorPlacement : function (label, element) {
				label.appendTo($('#' + element[0].id + 'FormValidationMessage'));
			}
		});

		$('#retrieveSheetsForm').validate({
			errorPlacement : function (label, element) {
				label.appendTo($('#' + element[0].id + 'FormValidationMessage'));
			}
		});

		loadValidationRules();
	});
</script>
{/literal}