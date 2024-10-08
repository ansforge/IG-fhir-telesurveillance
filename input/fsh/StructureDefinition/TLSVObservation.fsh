Profile: TLSVObservation
Parent: Observation
Id: tlsv-observation
Title: "Profil Observation pour la telesurveillance"
Description: "Profil de la ressource Observation dans le cadre de la télésurveillance pour transmettre une information de questionnaire"
* identifier 0..* MS
* identifier ^short = "(recommandé) identifiant métier unique attribué à cette mesure/réponse"

* status 1..1 
* status ^short = "Statut de la mesure/réponse: final | corrected | entered-in-error"

* category 0..* MS
* category ^short = "(recommandé) Grande catégorie qui peut servir à identifier les différentes sources d'observations en télésurveillance: vital-sign : constantes physiologiques, signes vitaux, mesures | survey : réponse à questionnaire ou score |  activity : activité physique (#pas, #longueurs de piscine, ...)"
* category from https://interop.esante.gouv.fr/ig/fhir/tlsv/ValueSet/TLSVCategory (required)

* code 1..1
* code ^short = "Le code descriptif de l'observation"

* subject 1..1
* subject ^short = "La référence au patient télésuivi : pointe vers la ressource Patient accessible sur un serveur ou présente dans le Bundle courant"
* subject only Reference(FRCorePatientProfile)

* encounter 0..1
* encounter ^short = "Référence à une visite d'un thérapeute au patient"

* effective[x] 1..1
* effective[x] only dateTime or Period
* effective[x] ^short = "Le temps clinique ou physiologique de l'observation : par exemple la journée pour un comptage de pas, ou la date et heure de pesage"

* issued 0..1
* issued ^short = "(recommandé) date et heure de mise à disposition de cette version de l'observation"

* performer 0..*
* performer ^short = "(recommandé) La personne qui a réalisé l'observation, ou saisi ou validé le résultat (un professionnel de santé, un aidant, le patient ...)"

* value[x] 0..1
* value[x] ^short = "(recommandé) le résultat de l'observation. En principe présent. Peut être absent pour signifier une question laissée sans réponse, ou pour effacer un résultat précédemment communiqué dans une version précédente de la ressource"

* dataAbsentReason 0..1
* dataAbsentReason ^short = "(recommandé) à renseigner dans le cas où l'élément 'value' est absent"

* interpretation 0..*
* interpretation ^short = "Utilisable pour représenter un niveau d'alerte déclenché par cette observation"

* note 0..* 
* note ^short = "Commentaire sur cette observation"

* bodySite 0..1
* bodySite ^short = "Partie du corps spécifiquement concernée par l'observation"

* method 0..1
* method ^short = "La méthode de mesure employée"

* device 0..1
* device ^short = "Le dispositif de mesure employé"

* referenceRange 0..*
* referenceRange ^short = "Un intervalle de référence applicable à ce patient pour cette observation"

* derivedFrom 0..*
* derivedFrom ^short = "La ou les ressources qui contiennent les réponses du questionnaire"
* derivedFrom only Reference(QuestionnaireResponse or Observation)

* component 0..*
* component ^short = "(conditionnel) présent pour certaines observations combinant deux mesures concomitantes, et dans ce cas l'élément Observation.value n'est en général pas présent"
