
<B>Bienvenue dans le guide d'implémentation des réponses aux questionnaires au format FHIR.</B>

Dans le présent cas d'usage, on extrait certaines réponses significatives d'un ensemble de réponses de questionnaires, et on les véhicule sous forme d'observations.
Chaque réponse devient une observation.

<div class="figure" style="width:65%;">
    <img src="UserCase1.png" alt="UserCase" title="UserCase">
</div>

Ces spécifications ne sont pas spécifiques à une pathologie, mais implémentables par la majeure partie des solutions de télésurveillance.


Cadre du guide : ce qui entre dans le scope 
-	Partage des données saisies par le patient ou par l’aidant (ou soignant auprès du patient à domicile par exemple) dans des questionnaires de télésurveillance
-	Partage des scores calculés sur la base des réponses aux questionnaires 
-	Partage des données mesurées par des dispositifs médicaux dans le cadre d’un dispositif de télésurveillance

<div class="figure" style="width:100%;">
    <p>{% include document-overview.svg %}</p>
</div>