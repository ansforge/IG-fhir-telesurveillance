Profile: TLSVObservation
Parent: Observation
Description: "Observation TéléSurveillance "
* identifier 0..* MS
* identifier ^definition = "recommandé : identifiant métier unique attribué à cette mesure/réponse"
* identifier ^short = "recommandé : identifiant métier unique attribué à cette mesure/réponse"
* status 1..1 
* status ^short = "requis : statut de la mesure/réponse: final | corrected | entered-in-error"
//* status ^definition = "requis : statut de la mesure/réponse: final | corrected | entered-in-error"
* category 0..* MS
* category ^short = "recommandé : Grande catégorie qui peut servir à identifier les différentes sources d'observations en télésurveillance: vital-sign : constantes physiologiques, signes vitaux, mesures | laboratory : résultat de labo (hors périmètre de ce profil) 
survey : réponse à questionnaire ou score | exam : résultat d'examen clinique (hors périmètre TLS) | activity : activité physique (#pas, #longueurs de piscine, ...)"
* category from https://interop.esante.gouv.fr/ig/fhir/tlsv/ValueSet/TLSVCategory (required)
* code 1..1
* code ^short = "requis : le type précis d'observation"
* code ^definition = "requis : le type précis d'observation"
* subject 1..1
* subject ^short = "requis : La référence au patient télésuivi : pointe vers la ressource Patient accessible sur un serveur ou présente dans le Bundle courant"
* encounter 0..1
* encounter ^short = "optionnel : référence à une visite d'un thérapeute au patient"
* effective[x] 1..1
* effective[x] only dateTime or Period
* effective[x] ^short = "requis : le temps clinique ou physiologique de l'observation : par exemple la journée pour un comptage de pas, ou la date et heure de prélèvement pour un résultat de labo, ou la date et heure de pesage"
* issued 0..1
* issued ^short = "recommandé : date et heure de mise à disposition de cette version de l'observation"
* performer 0..*
* performer ^short = "recommandé : La personne qui a réalisé l'observation, ou saisi ou validé le résultat (un professionnel de santé, un aidant, le patient ...)"
* value[x] 0..1
* value[x] ^short = "recommandé : le résultat de l'observation. En principe présent. Peut être absent pour signifier une question laissée sans réponse, ou pour effacer un résultat précédemment communiqué dans une version précédente de la ressource"
* dataAbsentReason 0..1
* dataAbsentReason ^short = "recommandé : à renseigner dans le cas où l'élément 'value' est absent"
* interpretation 0..*
* interpretation ^short = "optionnel : utilisable pour représenter un niveau d'alerte déclenché par cette observation"
* note 0..* 
* note ^short = "optionnel : commentaire sur cette observation"
* bodySite 0..1
* bodySite ^short = "optionnel : partie du corps spécifiquement concernée par l'observation"
* method 0..1
* method ^short = "optionnel : la méthode de mesure employée "
* device 0..1
* device ^short = "optionnel : le dispositif de mesure employé"
* referenceRange 0..*
* referenceRange ^short = "optionnel : un intervalle de référence applicable à ce patient pour cette observation"
* derivedFrom 0..*
* derivedFrom ^short = "optionnel : la ou les ressources qui contiennent les réponses du questionnaire"
* component 0..*
* component ^short = "conditionnel : présent pour certaines observations combinant deux mesures concomitantes (exemple pression artérielle systolique et diastolique), et dans ce cas l'élément Observation.value n'est en général pas présent"
