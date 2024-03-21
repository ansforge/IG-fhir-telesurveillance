<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>Remote monitoring Implementation Guide</b> Transmitting questionnaire responses using an Observation resource for remote monitoring<br>
</p>

<B>Bienvenue dans le guide d'implémentation des réponses aux questionnaires au format FHIR.</B>
  
Dans le présent cas d'usage, on extrait certaines réponses significatives d'un ensemble de réponses de questionnaires, et on les véhicule sous forme d'observations. Chaque réponse devient une observation.
  
<div class="figure" style="width:65%;">
    <img src="UserCase1.png" alt="UserCase" title="UserCase">
</div>
  
Ces spécifications ne sont pas spécifiques à une pathologie, mais implémentables par la majeure partie des solutions de télésurveillance.
  
Cadre du guide :

* Partage des données saisies par le patient ou par l’aidant (ou soignant auprès du patient à domicile par exemple) dans des questionnaires de télésurveillance
* Partage des scores calculés sur la base des réponses aux questionnaires
* Partage des données mesurées par des dispositifs médicaux dans le cadre d’un dispositif de télésurveillance

Ce guide peut être utilisé en complément du guide [mesures de santé](https://interop.esante.gouv.fr/ig/fhir/mesures) permettant de transmettre des données de signes vitaux

### Ressources profilées

La liste ci-dessous expose la liste des profils.

{% sql SELECT '[' || Title ||'](StructureDefinition-' || id || '.html)' as "Titre du profil", Description, json_extract(Json, '$.baseDefinition') as "URL canonique de la ressource parent" FROM Resources WHERE Type = 'StructureDefinition' and Description like "Profil%" %}

### Dépendances

{% include dependency-table.xhtml %}
