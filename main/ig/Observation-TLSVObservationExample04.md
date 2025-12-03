# TLSVObservationExample04 - Guide d'implémentation de la télésurveillance v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TLSVObservationExample04**

## Example Observation: TLSVObservationExample04

Profil: [Profil Observation pour la telesurveillance](StructureDefinition-tlsv-observation.md)

**status**: Final

**category**: Survey

**code**: weight

**subject**: [Pierre Durand](Patient-ExamplefrCorePatient001.md)

**effective**: 2023-10-09

**performer**: [Pierre Durand](Patient-ExamplefrCorePatient001.md)

**value**: 62 kg(Détails : code UCUM[kg] = '[kg]')

**device**: [Device : identifier = SYSID,BTMAC; manufacturer = Nonin_Medical_Inc.; serialNumber = 501900083; modelNumber = Model 3230; type = MDC_MOC_VMS_MDS_SIMP](Device-phd-74E8FFFEFF051C00.md)

**derivedFrom**: `QuestionnaireResponse001`



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "TLSVObservationExample04",
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
        "system" : "http://loinc.org",
        "code" : "29463-7",
        "display" : "weight"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExamplefrCorePatient001",
    "display" : "Pierre Durand"
  },
  "effectiveDateTime" : "2023-10-09",
  "performer" : [
    {
      "reference" : "Patient/ExamplefrCorePatient001",
      "display" : "Pierre Durand"
    }
  ],
  "valueQuantity" : {
    "value" : 62,
    "unit" : "kg",
    "system" : "http://unitsofmeasure.org",
    "code" : "[kg]"
  },
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
