<div class="ui-mobile-widget">
	<div class="ui-mobile-widget-header">Op�ration <span class="alternate">{$operation->getOperationDescription()|escape}</div>
	<div class="ui-mobile-widget-separator">Contributions</div>
	<div class="ui-mobile-widget-content">
		<form action="{$PHP_SELF}" id="addIncomingForm" method="post">
			<input name="operationId" type="hidden" value="{$operation->getOperationId()}" />
			<input name="action" type="hidden" value="addIncoming" />
			{foreach from=$incomingsList item="incoming" name="incomingsList"}
				<div class="ui-mobile-widget-item">
					<div class="ui-helper-clearfix">
						<div class="ui-mobile-widget-item-field">
							<button class="ui-button" onclick="confirmIncomingDelete('{$incoming->getPersonName()|escape:'javascript'|escape}', '{$incoming->getInId()}')" type="button"><span class="ui-icon ui-icon-close"></span></button>
						</div>
						<div class="ui-mobile-widget-item-field">
							<div>{$incoming->getInAmount()|formatMoney}</div>
						</div>
						<div class="ui-mobile-widget-item-label">
							<a href="person-details.php?personId={$incoming->getPersonId()}">{$incoming->getPersonName()|escape}</a>
						</div>
					</div>
				</div>
			{foreachelse}
				<div class="ui-mobile-widget-item">
					<div style="font-style: italic; text-align: center;">Aucune contribution enregistr�e.</div>
				</div>
			{/foreach}
			<div class="ui-mobile-widget-item ui-helper-clearfix">
				<div class="ui-helper-clearfix">
					<div class="ui-mobile-widget-item-field">
						<button class="ui-button" id="addIncomingButton" name="addIncomingButton" type="submit"><span class="ui-icon ui-icon-plus"></span></button>
					</div>
					<div class="ui-mobile-widget-item-field">
						<select id="contributorId" name="contributorId">
							{foreach from=$peopleList item="person"}
								<option value="{$person->getPersonId()}">{$person->getPersonName()|escape}</option>
							{/foreach}
						</select>
						<input class="amount" id="amount" maxlength="10" name="amount" type="text" />&nbsp;{$CURRENCY}
					</div>
				</div>
				<div class="ui-mobile-widget-item-description">
					<div class="formValidationMessage" id="amountFormValidationMessage" style="float: right;"></div>
				</div>
			</div>
		</form>
	</div>

	<div class="ui-mobile-widget-separator">Participations</div>
	<div class="ui-mobile-widget-content">
		<form action="{$PHP_SELF}" id="addOutgoingForm" method="post">
			<input name="operationId" type="hidden" value="{$operation->getOperationId()}" />
			<input name="action" type="hidden" value="addOutgoing" />
			{foreach from=$outgoingsList item="outgoing" name="outgoingsList"}
				<div class="ui-mobile-widget-item">
					<div class="ui-helper-clearfix">
						<div class="ui-mobile-widget-item-field">
							<button class="ui-button" onclick="confirmOutgoingDelete('{$outgoing->getPersonName()|escape:'javascript'|escape}', '{$outgoing->getOutId()}')" type="button"><span class="ui-icon ui-icon-close"></span></button>
						</div>
						<div class="ui-mobile-widget-item-field">
							<div>{$outgoing->computeWeightedPart()|formatMoney}</div>
							<div style="font-size: 0.8em;">{$outgoing->getOutWeight()} part(s) sur {$outgoing->getOperationTotalOutWeight()}</div>
						</div>
						<div class="ui-mobile-widget-item-label">
							<a href="person-details.php?personId={$outgoing->getPersonId()}">{$outgoing->getPersonName()|escape}</a>
						</div>
					</div>
				</div>
			{foreachelse}
				<div class="ui-mobile-widget-item">
					<div style="font-style: italic; text-align: center;">Aucune participation enregistr�e.</div>
				</div>
			{/foreach}
			<div class="ui-mobile-widget-item ui-helper-clearfix">
				<div class="ui-helper-clearfix">
					<div class="ui-mobile-widget-item-field">
						<button class="ui-button" id="addOutgoingButton" name="addOutgoingButton" type="submit"><span class="ui-icon ui-icon-plus"></span></button>
					</div>
					<div class="ui-mobile-widget-item-field">
						<select id="participantId" name="participantId">
							{foreach from=$peopleList item="person"}
								<option value="{$person->getPersonId()}">{$person->getPersonName()|escape}</option>
							{/foreach}
						</select>
						<input class="weight" id="weight" maxlength="10" name="weight" type="text" value="1" />
					</div>
				</div>
				<div class="ui-mobile-widget-item-description">
					<div class="formValidationMessage" id="weightFormValidationMessage" style="float: right;"></div>
				</div>
			</div>
		</form>
	</div>
</div>

<div id="deleteIncomingConfirmationDialog">
	<div>Etes-vous s�r de vouloir effacer <span class="alternate" id="deleteIncomingPersonName"></span> de la liste?</div>
	<div class="ui-dialog-button-row">
		<button class="ui-button" id="confirmDeleteIncomingButton">Oui</button>
		<button class="ui-button" id="cancelDeleteIncomingButton">Non</button>
	</div>
	<div id="deleteIncomingOperationId" style="display: none;">{$operation->getOperationId()}</div>
	<div id="deleteIncomingId" style="display: none;"></div>
</div>

<div id="deleteOutgoingConfirmationDialog">
	<div>Etes-vous s�r de vouloir effacer <span class="alternate" id="deleteOutgoingPersonName"></span> de la liste?</div>
	<div class="ui-dialog-button-row">
		<button class="ui-button" id="confirmDeleteOutgoingButton">Oui</button>
		<button class="ui-button" id="cancelDeleteOutgoingButton">Non</button>
	</div>
	<div id="deleteOutgoingOperationId" style="display: none;">{$operation->getOperationId()}</div>
	<div id="deleteOutgoingId" style="display: none;"></div>
</div>

{include file="mobile/menu-people-list.tpl"}
{include file="mobile/menu-people-add.tpl"}
{include file="mobile/menu-operation-add.tpl"}

{literal}
<script src="js/operation-details.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function() {

		$('#addIncomingForm').validate({
			errorPlacement : function (label, element) {
				label.appendTo($('#' + element[0].id + 'FormValidationMessage'));
			}
		});
		$('#addOutgoingForm').validate({
			errorPlacement : function (label, element) {
				label.appendTo($('#' + element[0].id + 'FormValidationMessage'));
			}
		});

		loadValidationRules();

		$('#deleteIncomingConfirmationDialog').dialog({
			autoOpen: false,
			bgiframe: true,
			modal : true,
			open:function() {
			  $(this).parent().find(".ui-dialog-titlebar-close").remove();
			},
			resizable : false,
			title : 'Confirmation',
			width : Math.min(300, $(window).width() * 0.8)
		});

		$('#confirmDeleteIncomingButton').click(function() {
			window.location.href =  unescape(sprintf('operation-details.php?operationId=%s%%26action=deleteIncoming%%26incomingId=%s', $('#deleteIncomingOperationId').text(), $('#deleteIncomingId').text()));
		});

		$('#cancelDeleteIncomingButton').click(function() {
			$('#deleteIncomingConfirmationDialog').dialog('close');
		});

		$('#deleteOutgoingConfirmationDialog').dialog({
			autoOpen: false,
			bgiframe: true,
			modal : true,
			open:function() {
			  $(this).parent().find(".ui-dialog-titlebar-close").remove();
			},
			resizable : false,
			title : 'Confirmation',
			width : Math.min(300, $(window).width() * 0.8)
		});

		$('#confirmDeleteOutgoingButton').click(function() {
			window.location.href =  unescape(sprintf('operation-details.php?operationId=%s%%26action=deleteOutgoing%%26outgoingId=%s', $('#deleteOutgoingOperationId').text(), $('#deleteOutgoingId').text()));
		});

		$('#cancelDeleteOutgoingButton').click(function() {
			$('#deleteOutgoingConfirmationDialog').dialog('close');
		});
	});

	function confirmIncomingDelete(contributorName, incomingId) {
		$('#deleteIncomingPersonName').text(contributorName);
		$('#deleteIncomingId').text(incomingId);
		$('#deleteIncomingConfirmationDialog').dialog('open');
		return false;
	}

	function confirmOutgoingDelete(participantName, outgoingId) {
		$('#deleteOutgoingPersonName').text(participantName);
		$('#deleteOutgoingId').text(outgoingId);
		$('#deleteOutgoingConfirmationDialog').dialog('open');
		return false;
	}

</script>
{/literal}