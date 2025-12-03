# TLSVObservationExample03 - Guide d'implémentation de la télésurveillance v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TLSVObservationExample03**

## Example Observation: TLSVObservationExample03

Profil: [Profil Observation pour la telesurveillance](StructureDefinition-tlsv-observation.md)

**status**: Final

**category**: Survey

**code**: Pain finding at anatomical site

**subject**: [Pierre Durand](Patient-ExamplefrCorePatient001.md)

**effective**: 2023-10-09 --> 2023-10-15

**performer**: [Pierre Durand](Patient-ExamplefrCorePatient001.md)

**value**: J'ai pris un anti-douleur

**device**: [Device : identifier = SYSID,BTMAC; manufacturer = Nonin_Medical_Inc.; serialNumber = 501900083; modelNumber = Model 3230; type = MDC_MOC_VMS_MDS_SIMP](Device-phd-74E8FFFEFF051C00.md)

**derivedFrom**: `QuestionnaireResponse001`



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "TLSVObservationExample03",
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
        "code" : "279001004",
        "display" : "Pain finding at anatomical site"
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
  "performer" : [
    {
      "reference" : "Patient/ExamplefrCorePatient001",
      "display" : "Pierre Durand"
    }
  ],
  "valueString" : "J'ai pris un anti-douleur",
  "device" : {
    "reference" : "Device/phd-74E8FFFEFF051C00"
  },
  "derivedFrom" : [
    {
      "reference" : "QuestionnaireResponse001",
      "display" : "QuestionnaireResponse001"
    }
  ]
}

```
