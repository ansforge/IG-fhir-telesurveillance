# TLSVObservationExampleDAS28-03 - Guide d'implémentation de la télésurveillance v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TLSVObservationExampleDAS28-03**

## Example Observation: TLSVObservationExampleDAS28-03

Profil: [Profil Observation pour la telesurveillance](StructureDefinition-tlsv-observation.md)

**status**: Final

**category**: Survey

**code**: Visual analog scale pain score

**subject**: [Pierre Durand](Patient-ExamplefrCorePatient001.md)

**effective**: 2023-10-09 10:45:00+0200

**performer**: [Pierre Durand](Patient-ExamplefrCorePatient001.md)

**value**: 45

**method**: Assessment using visual analog pain scale

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 0 | 100 |

**derivedFrom**: [https://somefhirserver.fr/QuestionResponse/4365462658738](https://somefhirserver.fr/QuestionResponse/4365462658738)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "TLSVObservationExampleDAS28-03",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/telesurveillance/StructureDefinition/tlsv-observation"
    ]
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "survey"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "443394008",
        "display" : "Visual analog scale pain score"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExamplefrCorePatient001",
    "display" : "Pierre Durand"
  },
  "effectiveDateTime" : "2023-10-09T10:45:00+02:00",
  "performer" : [
    {
      "reference" : "Patient/ExamplefrCorePatient001",
      "display" : "Pierre Durand"
    }
  ],
  "valueInteger" : 45,
  "method" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "445719003",
        "display" : "Assessment using visual analog pain scale"
      }
    ]
  },
  "referenceRange" : [
    {
      "low" : {
        "value" : 0
      },
      "high" : {
        "value" : 100
      }
    }
  ],
  "derivedFrom" : [
    {
      "reference" : "https://somefhirserver.fr/QuestionResponse/4365462658738"
    }
  ]
}

```
