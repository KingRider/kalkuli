{*
 * Copyright 2006-2011 Florent Paillard
 * 
 * This file is part of /kal.'ku.li/.
 * 
 * /kal.'ku.li/ is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * /kal.'ku.li/ is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with /kal.'ku.li/.  If not, see <http://www.gnu.org/licenses/>.
 * 
 *}
<h1>Principes de base du fonctionnement de /kal.'ku.li/</h1>
<div class="ui-main-widget">
	<div class="ui-main-widget-content">
		<h2>Cr�ation d'une feuille de compte</h2>
		<p>Que se soit pour faire les comptes d'une soir�e, de vacances, d'une colocation ou autre, vous cr�ez une <span class="alternate">feuille de compte</span> depuis la page d'accueil. Une feuille de compte est un espace priv� dans lequel vous enregistrez le nom des <span class="alternate">participants</span> et saisissez l'ensemble des d�penses, appel�es <span class="alternate">op�rations</span>, effectu�es par et pour les participants.</p>
		<h2>Enregistrement des op�rations et calcul du solde</h2>
		<p>Au fur et � mesure que vous saisissez des op�rations (g�n�ralement des d�penses), le <span class="alternate">solde</span> de chaque participant est mis � jour. Lorsqu'un participant a un solde positif, ceci signifie qu'il a d�pens� plus que les autres participants. Et inversement.</p>
		<p>Par exemple, lorsqu'une op�ration de 30&nbsp;&euro; est enregistr�e et r�parties entre 3 participants, le solde de celui qui a r�gl� la d�pense augmente de 20&nbsp;&euro; (+30&nbsp;&euro; r�gl�s, -10&nbsp;&euro; repr�sentant sa propre part) et le solde des deux autres participants diminue de 10&nbsp;&euro;.</p>
		<p>Remarque: la somme des soldes des participants d'une feuille de compte est toujours �gale � z�ro.</p>
		<h2>R�partition et pond�ration des op�rations</h2>
		<p>Par d�faut, les op�rations s'appliquent � tous les participants de la feuille de compte mais il est possible de s�lectionner uniquement les participants concern�s par une op�ration.</p>
		<p>Il est �galement possible de saisir des op�rations r�gl�es par plusieurs participants, appel�s <span class="alternate">contributeurs</span>. Le montant total de l'op�ration est donc �gal � la somme des r�glements. Ce montant total est ensuite r�parti entre les participants s�lectionn�s pour cette op�ration.</p>
		<p>Enfin, il est possible de r�partir le montant total d'une op�ration de mani�re pond�r�e entre les participants en leur appliquant des quota diff�rents, appel�s <span class="alternate">parts</span>.</p>
		<h2>Finalisation des comptes et remboursements</h2>
		<p>Lorsque toutes les op�rations ont �t� saisies, le solde de tous les participants n'est g�n�ralement pas � 0. Les participants ayant un solde n�gatif doivent donc rembourser ceux qui ont un solde positif. Il n'y a pas de r�gle d�terminant quel participant remboursera quel autre. Cette d�cision est g�n�ralement prise en essayant de r�duire le nombre de remboursement � effectuer.</p>
		<p>Cette �tape de remboursement se produit g�n�ralement pour les compte de soir�e, vacances ou �v�nement relativement court. A l'inverse, dans une collocation, l'�cran pr�sentant le solde des participants est plut�t utilis� pour savoir quel collocataire va payer la prochaine facture afin de r�-�quilibrer le solde de chacun m�me si le z�ro absolu n'est quasiment jamais atteint.</p>
		<p>Pour saisir un remboursement, il suffit de cr�er une op�ration du montant du remboursement ayant un seul contributeur (celui qui rembourse) et un seul participant (celui qui est rembours�). Le solde du contributeur augmente alors exactement de la valeur du remboursement et celui du participant dimune d'autant.</p>
	</div>
</div>
