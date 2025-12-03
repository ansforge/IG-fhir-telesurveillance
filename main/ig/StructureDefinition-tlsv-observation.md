# Profil Observation pour la telesurveillance - Guide d'implémentation de la télésurveillance v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profil Observation pour la telesurveillance**

## Resource Profile: Profil Observation pour la telesurveillance 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/telesurveillance/StructureDefinition/tlsv-observation | *Version*:0.1.0 |
| Active as of 2025-12-03 | *Computable Name*:TLSVObservation |

 
Profil de la ressource Observation dans le cadre de la télésurveillance pour transmettre une information de questionnaire 

**Utilisations:**

* Exemples pour ce Profil: [Observation/TLSVObservationExample01](Observation-TLSVObservationExample01.md), [Observation/TLSVObservationExample02](Observation-TLSVObservationExample02.md), [Observation/TLSVObservationExample03](Observation-TLSVObservationExample03.md), [Observation/TLSVObservationExample04](Observation-TLSVObservationExample04.md)...Show 5 more,[Observation/TLSVObservationExample05](Observation-TLSVObservationExample05.md),[Observation/TLSVObservationExampleDAS28-01](Observation-TLSVObservationExampleDAS28-01.md),[Observation/TLSVObservationExampleDAS28-02](Observation-TLSVObservationExampleDAS28-02.md),[Observation/TLSVObservationExampleDAS28-03](Observation-TLSVObservationExampleDAS28-03.md)and[Observation/TLSVObservationExampleDAS28-04](Observation-TLSVObservationExampleDAS28-04.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.telesurveillance|current/StructureDefinition/tlsv-observation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tlsv-observation.csv), [Excel](StructureDefinition-tlsv-observation.xlsx), [Schematron](StructureDefinition-tlsv-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tlsv-observation",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/telesurveillance/StructureDefinition/tlsv-observation",
  "version" : "0.1.0",
  "name" : "TLSVObservation",
  "title" : "Profil Observation pour la telesurveillance",
  "status" : "active",
  "date" : "2025-12-03T10:56:47+00:00",
  "publisher" : "ANS",
  "contact" : [
    {
      "name" : "ANS",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "Profil de la ressource Observation dans le cadre de la télésurveillance pour transmettre une information de questionnaire",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.identifier",
        "path" : "Observation.identifier",
        "short" : "(recommandé) identifiant métier unique attribué à cette mesure/réponse",
        "mustSupport" : true
      },
      {
        "id" : "Observation.status",
        "path" : "Observation.status",
        "short" : "Statut de la mesure/réponse: final | corrected | entered-in-error"
      },
      {
        "id" : "Observation.category",
        "path" : "Observation.category",
        "short" : "(recommandé) Grande catégorie qui peut servir à identifier les différentes sources d'observations en télésurveillance: vital-sign : constantes physiologiques, signes vitaux, mesures | survey : réponse à questionnaire ou score |  activity : activité physique (#pas, #longueurs de piscine, ...)",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/tlsv/ValueSet/TLSVCategory"
        }
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "short" : "Le code descriptif de l'observation"
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "short" : "La référence au patient télésuivi : pointe vers la ressource Patient accessible sur un serveur ou présente dans le Bundle courant",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient"
            ]
          }
        ]
      },
      {
        "id" : "Observation.encounter",
        "path" : "Observation.encounter",
        "short" : "Référence à une visite d'un thérapeute au patient"
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "short" : "Le temps clinique ou physiologique de l'observation : par exemple la journée pour un comptage de pas, ou la date et heure de pesage",
        "min" : 1,
        "type" : [
          {
            "code" : "dateTime"
          },
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "Observation.issued",
        "path" : "Observation.issued",
        "short" : "(recommandé) date et heure de mise à disposition de cette version de l'observation"
      },
      {
        "id" : "Observation.performer",
        "path" : "Observation.performer",
        "short" : "(recommandé) La personne qui a réalisé l'observation, ou saisi ou validé le résultat (un professionnel de santé, un aidant, le patient ...)"
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "short" : "(recommandé) le résultat de l'observation. En principe présent. Peut être absent pour signifier une question laissée sans réponse, ou pour effacer un résultat précédemment communiqué dans une version précédente de la ressource"
      },
      {
        "id" : "Observation.dataAbsentReason",
        "path" : "Observation.dataAbsentReason",
        "short" : "(recommandé) à renseigner dans le cas où l'élément 'value' est absent"
      },
      {
        "id" : "Observation.interpretation",
        "path" : "Observation.interpretation",
        "short" : "Utilisable pour représenter un niveau d'alerte déclenché par cette observation"
      },
      {
        "id" : "Observation.note",
        "path" : "Observation.note",
        "short" : "Commentaire sur cette observation"
      },
      {
        "id" : "Observation.bodySite",
        "path" : "Observation.bodySite",
        "short" : "Partie du corps spécifiquement concernée par l'observation"
      },
      {
        "id" : "Observation.method",
        "path" : "Observation.method",
        "short" : "La méthode de mesure employée"
      },
      {
        "id" : "Observation.device",
        "path" : "Observation.device",
        "short" : "Le dispositif de mesure employé"
      },
      {
        "id" : "Observation.referenceRange",
        "path" : "Observation.referenceRange",
        "short" : "Un intervalle de référence applicable à ce patient pour cette observation"
      },
      {
        "id" : "Observation.derivedFrom",
        "path" : "Observation.derivedFrom",
        "short" : "La ou les ressources qui contiennent les réponses du questionnaire",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
              "http://hl7.org/fhir/StructureDefinition/Observation"
            ]
          }
        ]
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "short" : "(conditionnel) présent pour certaines observations combinant deux mesures concomitantes, et dans ce cas l'élément Observation.value n'est en général pas présent"
      }
    ]
  }
}

```
