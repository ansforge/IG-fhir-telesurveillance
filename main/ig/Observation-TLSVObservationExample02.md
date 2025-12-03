# TLSVObservationExample02 - Guide d'implémentation de la télésurveillance v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TLSVObservationExample02**

## Example Observation: TLSVObservationExample02

Profil: [Profil Observation pour la telesurveillance](StructureDefinition-tlsv-observation.md)

**status**: Final

**category**: Survey

**code**: Fatigue Severity

**subject**: [Pierre Durand](Patient-ExamplefrCorePatient001.md)

**effective**: 2023-10-09 --> 2023-10-15

**issued**: 2023-10-12 13:28:17+0200

**performer**: [Pierre Durand](Patient-ExamplefrCorePatient001.md)

**value**: Severe

**interpretation**: C70667, Severe

**derivedFrom**: `QuestionnaireResponse001`



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "TLSVObservationExample02",
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
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C180126",
        "display" : "Fatigue Severity"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExamplefrCorePatient001",
    "display" : "Pierre Durand"
  },
  "effectivePeriod" : {
    "start" : "2023-10-09",
    "end" : "2023-10-15"
  },
  "issued" : "2023-10-12T13:28:17.239+02:00",
  "performer" : [
    {
      "reference" : "Patient/ExamplefrCorePatient001",
      "display" : "Pierre Durand"
    }
  ],
  "valueCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C70667",
        "display" : "Severe"
      }
    ]
  },
  "interpretation" : [
    {
      "coding" : [
        {
          "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
          "code" : "C70667"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "24484000"
        }
      ]
    }
  ],
  "derivedFrom" : [
    {
      "reference" : "QuestionnaireResponse001",
      "display" : "QuestionnaireResponse001"
    }
  ]
}

```
