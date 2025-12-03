# TLSVObservationExampleDAS28-01 - Guide d'implémentation de la télésurveillance v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TLSVObservationExampleDAS28-01**

## Example Observation: TLSVObservationExampleDAS28-01

Profil: [Profil Observation pour la telesurveillance](StructureDefinition-tlsv-observation.md)

**status**: Final

**category**: Survey

**code**: Tender 28 joint count

**subject**: [Pierre Durand](Patient-ExamplefrCorePatient001.md)

**effective**: 2023-10-09 10:45:00+0200

**performer**: [Pierre Durand](Patient-ExamplefrCorePatient001.md)

**value**: 5

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 0 | 28 |

**derivedFrom**: [https://somefhirserver.fr/QuestionResponse/4365462658738](https://somefhirserver.fr/QuestionResponse/4365462658738)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "TLSVObservationExampleDAS28-01",
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
        "code" : "442736000",
        "display" : "Tender 28 joint count"
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
  "valueInteger" : 5,
  "referenceRange" : [
    {
      "low" : {
        "value" : 0
      },
      "high" : {
        "value" : 28
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
