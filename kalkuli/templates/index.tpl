{*
 * Copyright 2006-2011 Florent Paillard
 * 
 * This file is part of /kal.ku.'li/.
 * 
 * /kal.ku.'li/ is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * /kal.ku.'li/ is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with /kal.ku.'li/.  If not, see <http://www.gnu.org/licenses/>.
 * 
 *}
<h1>/kal.'ku.li/</h1>
<div class="ui-main-widget">
	<div class="ui-main-widget-content">
		<p>Vacances, collocations, soir�es... Tenez les comptes en toute simplicit� et en toute transparence entre les participants.</p>
		<p>Saisissez simplement les d�penses effectu�es au titre du groupe et visualisez imm�diatement le solde de chaque participant.</p>
		<p>Vous pouvez cr�er d�s maintenant, simplement et gratuitement une feuille de compte sans vous enregistrer sur le site. Un email vous sera envoy� pour vous communiquer l'adresse unique et priv�e de votre feuille de compte.</p>
	</div>
</div>
<div class="buttons">
	<button class="ui-button" id="openCreateSheetDialogButton" type="button">Cr�er une feuille de compte</button>
	<button class="ui-button" id="openRetrieveSheetsDialogButton" type="button">Retrouver ses feuilles de compte</button>
</div>

<div id="createSheetDialog">
	<form action="{$CONTEXT_PATH}/" id="createSheetForm" name="createSheetForm" method="post">
		<table class="tableForm">
			<colgroup>
				<col />
				<col style="width: 15em;" />
			</colgroup>
			<tr>
				<th><label for="sheetName">Nom de la feuille de compte&nbsp;:</label></th>
				<td>
					<input class="sheetName" id="sheetName" maxlength="255" name="sheetName" type="text" />
					<div class="formValidationMessage" id="sheetNameFormValidationMessage"></div>
				</td>
			</tr>
			<tr>
				<th><label for="currencyCode">Devise&nbsp;:</label></th>
				<td>
					<select id="currencyCode" name="currencyCode" class="currencyCode">
						{foreach from=$currencyOptionList item="currencyLabel" key="currencyCode"}
							<option value="{$currencyCode}">{$currencyLabel}</option>
						{/foreach}
					</select>
				</td>
			</tr>
			<tr>
				<th><label for="creatorEmail">Email de rattachement&nbsp;:</label></th>
				<td>
					<input class="creatorEmail" id="creatorEmail" maxlength="255" name="creatorEmail" type="text" />
					<div class="formValidationMessage" id="creatorEmailFormValidationMessage"></div>
				</td>
			</tr>
		</table>
		<div class="ui-dialog-button-row">
			<button class="ui-button" id="createSheetButton" name="createSheetButton" type="submit">Cr�er</button>
			<button class="ui-button" id="cancelCreateSheetButton" type="button">Annuler</button>
		</div>
	</form>
</div>

<div id="retrieveSheetsDialog">
	<div>Saisissez l'adresse email que vous avez utilis�e pour cr�er vos feuilles de compte. Un email vous sera imm�diatement envoy� avec la liste des feuilles de compte qui y sont rattach�es.</div>
	<form action="{$CONTEXT_PATH}/" id="retrieveSheetsForm" name="retrieveSheetsForm" method="post">
		<table class="tableForm">
			<colgroup>
				<col />
				<col style="width: 8em;" />
			</colgroup>
			<tr>
				<th><label for="retrieveEmail">Email de rattachement&nbsp;:</label></th>
				<td>
					<input class="retrieveEmail" id="retrieveEmail" maxlength="255" name="retrieveEmail" type="text" />
					<div class="formValidationMessage" id="retrieveEmailFormValidationMessage"></div>
				</td>
			</tr>
		</table>
		<div class="ui-dialog-button-row">
			<button class="ui-button" id="retrieveSheetsButton" name="retrieveSheetsButton" type="submit">Envoyer</button>
			<button class="ui-button" id="cancelRetrieveSheetsButton" name="cancelRetrieveSheetsButton" type="button">Annuler</button>
		</div>
	</form>
</div>

<script src="{$CONTEXT_PATH}/js/index.js" type="text/javascript"></script>
{literal}
<script type="text/javascript">
	$(function() {
		$('#createSheetDialog').dialog({
			autoOpen: false,
			bgiframe: true,
			height: 'auto',
			modal: true,
			resizable: false,
			title : "Cr�ation d'une feuille de compte",
			width: 450
		});

		$('#openCreateSheetDialogButton').click(function() {
			$('#sheetName').val('');
			$('#currencyCode').val(0);
			$('#creatorEmail').val('');
			$('#createSheetForm').validate().resetForm();

			$('#createSheetDialog').dialog('open');
		});

		$('#cancelCreateSheetButton').click(function() {
			$('#createSheetDialog').dialog('close');
		});
		
		$('#retrieveSheetsDialog').dialog({
			autoOpen: false,
			bgiframe: true,
			height: 'auto',
			modal: true,
			resizable: false,
			title : "Retrouver ses feuilles de compte",
			width: 450
		});

		$('#openRetrieveSheetsDialogButton').click(function() {
			$('#retrieveEmail').val('');
			$('#retrieveSheetsForm').validate().resetForm();

			$('#retrieveSheetsDialog').dialog('open');
		});

		$('#cancelRetrieveSheetsButton').click(function() {
			$('#retrieveSheetsDialog').dialog('close');
		});

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
