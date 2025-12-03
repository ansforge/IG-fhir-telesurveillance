<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>Remote Patient Monitoring Implementation Guide</b><br> Transmission of questionnaire responses using an Observation resource for remote patient monitoring<br>
</p>

<B>Bienvenue dans le guide d'implémentation des réponses aux questionnaires au format FHIR.</B>



{% if site.data.info.releaselabel == 'ci-build' %}
<div style="width: 65%">
<blockquote class="stu-note">
<p>
  <b>Attention !</b> Cette version du guide d'implémentation est en intégration continue (version de travail) et est soumise à des changements réguliers. La version officielle est accessible à l'adresse https://interop.esante.gouv.fr/ig/fhir/telesurveillance
</p>
</blockquote>
</div>
{% endif %}


<blockquote class="stu-note">
<p>
    Ce guide d'implémentation a été fait en collaboration avec InteropSanté et est hors ci-sis.
</p>
</blockquote>

Ce guide a été conçu pour faciliter l'échange de données entre les solutions de télésurveillance et les systèmes d'informations hospitaliers (Dossier Patient Informatisé et Entrepôt de Données de Santé notamment).

Les spécifications techniques reposent sur le standard HL7 FHIR et des profils français de la ressource Observation. Dans le présent cas d'usage, les réponses significatives sont extraites d'un ensemble de réponses de questionnaires, et sont véhiculées sous forme de ressources Observation.

Quelques exemples d'utilisation de ce guide : 

* Partage des données saisies par le patient ou par l’aidant (ou soignant auprès du patient à domicile par exemple) dans des questionnaires de télésurveillance
* Partage des scores calculés sur la base des réponses aux questionnaires

### Cadre du Guide

Le guide traite du partage de données saisies par le patient ou l'aidant, des scores calculés à partir de questionnaires et des données mesurées par des dispositifs médicaux dans le cadre de la télésurveillance.
Dans le cadre des données issues de questionnaires : un scénario d'utilisation spécifique consiste à extraire des réponses significatives des questionnaires pour les convertir en observations. Chaque réponse capturée devient une observation distincte qui est ensuite partagée entre les solutions de télésurveillance et les systèmes d'informations hospitaliers.

**Dans le périmètre du guide** : questionnaires standard et personnalisés, partage des scores et données mesurées.

**Hors périmètre** : alertes, actions relatives aux alertes, mesures de biologie, informations administratives, le transfert de réponses de grands questionnaires avec un grand nombre d'observations. Si des besoins similaire apparaîssent, n'hésitez pas à nous en faire part en issue.

**Non-Spécificité de la Pathologie** : ce processus n'est pas limité à une pathologie spécifique, ce qui le rend adaptable à une large variété de cas cliniques couverts par les solutions de télésurveillance. Des exemples de questionnaires en oncologie, rhumatologie, santé mentale sont fournis. Cette liste pourra être complétée par d’autres exemples jugés pertinents.

Ce guide peut être utilisé en complément du guide [mesures de santé](https://interop.esante.gouv.fr/ig/fhir/mesures) permettant de transmettre des données de signes vitaux.

### Auteurs

Ce guide d'implémentation est issu du [GT Télésurveillance](https://groups.google.com/g/is-gt-telesurveillance) organisé par Interopsanté et dirigé par Julie Dumons et François Macary. L'ANS a participé à ce GT et a rédigé ce guide (Nicolas Arnoux, Philippe Finet, Nicolas Riss) avec la contribution de Manuel Metz.

<div class="figure" style="width:20%;">
    <img style="height: auto; width: 100%;" src="LOGO_IS.png" alt="LOGO-IS" title="Logo IS">
</div>


### Ressources profilées

{% sql SELECT '[' || Title ||'](StructureDefinition-' || id || '.html)' as "Titre du profil", Description, json_extract(Json, '$.baseDefinition') as "URL canonique de la ressource parent" FROM Resources WHERE Type = 'StructureDefinition' and Description like "Profil%" %}

### Dépendances

{% include dependency-table.xhtml %}
