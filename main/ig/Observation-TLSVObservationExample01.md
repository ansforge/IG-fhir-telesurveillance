# TLSVObservationExample01 - Guide d'implémentation de la télésurveillance v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TLSVObservationExample01**

## Example Observation: TLSVObservationExample01

Profil: [Profil Observation pour la telesurveillance](StructureDefinition-tlsv-observation.md)

**status**: Final

**category**: Survey

**code**: Falling asleep in past 7 days [QIDS]

**subject**: [Pierre Durand](Patient-ExamplefrCorePatient001.md)

**effective**: 2023-10-09

**performer**: [Pierre Durand](Patient-ExamplefrCorePatient001.md)

**value**: I take at least 30 minutes to fall asleep, less than half the time

**device**: [Device : identifier = SYSID,BTMAC; manufacturer = Nonin_Medical_Inc.; serialNumber = 501900083; modelNumber = Model 3230; type = MDC_MOC_VMS_MDS_SIMP](Device-phd-74E8FFFEFF051C00.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "TLSVObservationExample01",
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
        "code" : "65502-7",
        "display" : "Falling asleep in past 7 days [QIDS]"
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
  "valueCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "LA14809-0"
      }
    ]
  },
  "device" : {
    "reference" : "Device/phd-74E8FFFEFF051C00"
  }
}

```
