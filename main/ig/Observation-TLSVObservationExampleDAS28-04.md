# TLSVObservationExampleDAS28-04 - Guide d'implémentation de la télésurveillance v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TLSVObservationExampleDAS28-04**

## Example Observation: TLSVObservationExampleDAS28-04

Profil: [Profil Observation pour la telesurveillance](StructureDefinition-tlsv-observation.md)

**status**: Final

**category**: Survey

**code**: Disease activity score using 28 joint count

**subject**: [Pierre Durand](Patient-ExamplefrCorePatient001.md)

**effective**: 2023-10-09 10:45:00+0200

**value**: 3.34

**interpretation**: Moderate activity

**method**: Assessment of rheumatoid arthritis

> **referenceRange****high**: 2.59**type**:Remission phase

> **referenceRange****low**: 2.6**high**: 3.2**type**:Low activity

> **referenceRange****low**: 5.11**high**: 5.1**type**:High activity

**derivedFrom**: 

* [Observation Tender 28 joint count](Observation-TLSVObservationExampleDAS28-01.md)
* [Observation Swollen 28 joint count](Observation-TLSVObservationExampleDAS28-02.md)
* [Observation Visual analog scale pain score](Observation-TLSVObservationExampleDAS28-03.md)
* [https://somefhirserver.fr/Observation/9548722577657](https://somefhirserver.fr/Observation/9548722577657)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "TLSVObservationExampleDAS28-04",
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
        "code" : "441870009",
        "display" : "Disease activity score using 28 joint count"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExamplefrCorePatient001",
    "display" : "Pierre Durand"
  },
  "effectiveDateTime" : "2023-10-09T10:45:00+02:00",
  "valueQuantity" : {
    "value" : 3.34
  },
  "interpretation" : [
    {
      "coding" : [
        {
          "system" : "http://loinc.org",
          "code" : "LA9642-5",
          "display" : "Moderate activity"
        }
      ]
    }
  ],
  "method" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "444009006",
        "display" : "Assessment of rheumatoid arthritis"
      }
    ]
  },
  "referenceRange" : [
    {
      "high" : {
        "value" : 2.59
      },
      "type" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "277022003",
            "display" : "Remission phase"
          }
        ]
      }
    },
    {
      "low" : {
        "value" : 2.6
      },
      "high" : {
        "value" : 3.2
      },
      "type" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "LA28784-9",
            "display" : "Low activity"
          }
        ]
      }
    },
    {
      "low" : {
        "value" : 5.11
      },
      "high" : {
        "value" : 5.1
      },
      "type" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "LA28786-4",
            "display" : "High activity"
          }
        ]
      }
    }
  ],
  "derivedFrom" : [
    {
      "reference" : "Observation/TLSVObservationExampleDAS28-01"
    },
    {
      "reference" : "Observation/TLSVObservationExampleDAS28-02"
    },
    {
      "reference" : "Observation/TLSVObservationExampleDAS28-03"
    },
    {
      "reference" : "https://somefhirserver.fr/Observation/9548722577657"
    }
  ]
}

```
