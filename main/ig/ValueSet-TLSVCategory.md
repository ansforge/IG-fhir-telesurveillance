# TLSV Categories - Guide d'implémentation de la télésurveillance v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TLSV Categories**

## ValueSet: TLSV Categories 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/tlsv/ValueSet/TLSVCategory | *Version*:0.1.0 |
| Draft as of 2026-06-26 | *Computable Name*:TLSVCategory |

 
Liste des codes autorisés dans category dans le cadre du profil TLSVObservation 

 **References** 

* [Profil Observation pour la telesurveillance](StructureDefinition-tlsv-observation.md)

### Définition logique (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "TLSVCategory",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/tlsv/ValueSet/TLSVCategory",
  "version" : "0.1.0",
  "name" : "TLSVCategory",
  "title" : "TLSV Categories",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-06-26T11:58:36+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Liste des codes autorisés dans category dans le cadre du profil TLSVObservation",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "FRANCE"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "version" : "2.0.0",
      "concept" : [{
        "code" : "survey",
        "display" : "Survey"
      },
      {
        "code" : "vital-signs"
      },
      {
        "code" : "activity",
        "display" : "Activity"
      }]
    }]
  }
}

```
