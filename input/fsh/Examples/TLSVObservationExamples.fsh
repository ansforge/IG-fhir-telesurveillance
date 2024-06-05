// Question à choix multiple dont les réponses sont dans le référentiel international LOINC
Instance: TLSVObservationExample01
InstanceOf: TLSVObservation
Usage: #example
* status = #final
* code =  http://loinc.org#65502-7 "Falling asleep in past 7 days [QIDS]"
* subject = Reference(ExamplefrCorePatient001) "Pierre Durand"
* effectiveDateTime = "2023-10-09"
* valueCodeableConcept = http://loinc.org#LA14809-0
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* device = Reference(phd-74E8FFFEFF051C00)
* performer = Reference(ExamplefrCorePatient001) "Pierre Durand"

// Question à choix multiple dont les réponses sont dans le référentiel international SNOMED CT et la temporalité est sur une période donnée. 
Instance: TLSVObservationExample02
InstanceOf: TLSVObservation
Usage: #example
* status = #final
* code =  http://loinc.org#65502-7 "Falling asleep in past 7 days [QIDS]"
* code = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C180126 "Fatigue Severity"
* subject = Reference(ExamplefrCorePatient001) "Pierre Durand"
* effectivePeriod.start = "2023-10-09"
* effectivePeriod.end = "2023-10-15"
* issued = 2023-10-12T13:28:17.239+02:00
* valueCodeableConcept = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C70667 "Severe"
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* interpretation[0] = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C70667
* interpretation[+] = http://snomed.info/sct#24484000
* performer = Reference(ExamplefrCorePatient001) "Pierre Durand"
* derivedFrom = Reference(QuestionnaireResponse001) "QuestionnaireResponse001"

// Question à réponse en texte libre: Qu'avez-vous fait/pris pour soulager votre ou vos douleurs ?
// (pour un questionnaire concernant la semaine du 9 au 15 oct.)
Instance: TLSVObservationExample03
InstanceOf: TLSVObservation
Usage: #example
* status = #final
* code =  http://snomed.info/sct#279001004 "Pain finding at anatomical site"
* subject = Reference(ExamplefrCorePatient001) "Pierre Durand"
* effectivePeriod.start = "2023-10-09"
* effectivePeriod.end = "2023-10-15"
* valueString = "J'ai pris un anti-douleur"
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* device = Reference(phd-74E8FFFEFF051C00)
* performer = Reference(ExamplefrCorePatient001) "Pierre Durand"
* derivedFrom = Reference(QuestionnaireResponse001) "QuestionnaireResponse001"

// Question libre avec réponse est une quantité : Quel est votre poids aujourd'hui ?
Instance: TLSVObservationExample04
InstanceOf: TLSVObservation
Usage: #example
* status = #final
* category =  http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code =  http://loinc.org#29463-7 "weight"
* subject = Reference(ExamplefrCorePatient001) "Pierre Durand"
* effectiveDateTime = "2023-10-09"
* valueQuantity = 62 '[kg]' "kg" 
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* device = Reference(phd-74E8FFFEFF051C00)
* performer = Reference(ExamplefrCorePatient001) "Pierre Durand"
* derivedFrom = Reference(QuestionnaireResponse001) "QuestionnaireResponse001"


// Question avec une réponse Oui / non Avez-vous réalisé ou prévu de réaliser votre prise de sang 2-3 jours avant votre venue en hôpital de jour?        Une seule réponse possible 
Instance: TLSVObservationExample05
InstanceOf: TLSVObservation
Usage: #example
* status = #final
* category =  http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.text = "Avez-vous réalisé ou prévu de réaliser votre prise de sang 2-3 jours avant votre venue en hôpital de jour?"
* subject = Reference(ExamplefrCorePatient001) "Pierre Durand"
* effectiveDateTime = "2023-10-09"
* valueBoolean = false
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* device = Reference(phd-74E8FFFEFF051C00)
* performer = Reference(ExamplefrCorePatient001) "Pierre Durand"
* derivedFrom = Reference(QuestionnaireResponse001) "QuestionnaireResponse001"

// DAS 28 acticulation douloureuse
Instance: TLSVObservationExampleDAS28-01
InstanceOf: TLSVObservation
Usage: #example
* status = #final
* code = http://snomed.info/sct#442736000 "Tender 28 joint count"
// code = http://loinc.org#88981-6 "Tender joint #"
* subject = Reference(ExamplefrCorePatient001) "Pierre Durand"
* effectiveDateTime = "2023-10-09T10:45:00+02:00"
* valueInteger = 5
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* performer = Reference(ExamplefrCorePatient001) "Pierre Durand"
* referenceRange.low.value = 0
* referenceRange.high.value = 28
* derivedFrom = Reference(https://somefhirserver.fr/QuestionResponse/4365462658738)


// DAS 28 Articulations gonflées
Instance: TLSVObservationExampleDAS28-02
InstanceOf: TLSVObservation
Usage: #example
* status = #final
* code = http://snomed.info/sct#442687006 "Swollen 28 joint count"
// * code = http://loinc.org#88980-8 "Swollen joint #"
* subject = Reference(ExamplefrCorePatient001) "Pierre Durand"
* effectiveDateTime = "2023-10-09T10:45:00+02:00"
* valueInteger = 3
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* performer = Reference(ExamplefrCorePatient001) "Pierre Durand"
* referenceRange.low.value = 0
* referenceRange.high.value = 28
* derivedFrom = Reference(https://somefhirserver.fr/QuestionResponse/4365462658738)


// DAS 28 Evaluation du niveau de douleur
Instance: TLSVObservationExampleDAS28-03
InstanceOf: TLSVObservation
Usage: #example
* status = #final
* code = http://snomed.info/sct#443394008 "Visual analog scale pain score"
//* code = http://loinc.org#38214-3 "Pain severity [Score] Visual analog score"
* subject = Reference(ExamplefrCorePatient001) "Pierre Durand"
* effectiveDateTime = "2023-10-09T10:45:00+02:00"
* valueInteger = 45
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* performer = Reference(ExamplefrCorePatient001) "Pierre Durand"
* method = http://snomed.info/sct#445719003 "Assessment using visual analog pain scale"
* referenceRange.low.value = 0
* referenceRange.high.value = 100
* derivedFrom = Reference(https://somefhirserver.fr/QuestionResponse/4365462658738)

// Score DAS 28 
Instance: TLSVObservationExampleDAS28-04
InstanceOf: TLSVObservation
Usage: #example
* status = #final
* code = http://snomed.info/sct#441870009 "Disease activity score using 28 joint count"
//* code = http://loinc.org#88982-4 "Rheumatoid arthritis disease activity level [CDAI]"
* subject = Reference(ExamplefrCorePatient001) "Pierre Durand"
* effectiveDateTime = "2023-10-09T10:45:00+02:00"
* valueQuantity.value = 3.34
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* interpretation = http://loinc.org#LA9642-5 "Moderate activity"
* method = http://snomed.info/sct#444009006 "Assessment of rheumatoid arthritis"
* referenceRange[0].high.value = 2.59
* referenceRange[0].type = http://snomed.info/sct#277022003 "Remission phase"
* referenceRange[1].high.value = 3.2
* referenceRange[1].low.value = 2.6
* referenceRange[1].type = http://loinc.org#LA28784-9 "Low activity"
* referenceRange[2].high.value = 5.1
* referenceRange[2].low.value = 3.21
* referenceRange[2].type = http://loinc.org#LA9642-5 "Moderate activity"
* referenceRange[2].low.value = 5.11
* referenceRange[2].type = http://loinc.org#LA28786-4 "High activity"
* derivedFrom[0] = Reference(TLSVObservationExampleDAS28-01)
* derivedFrom[1] = Reference(TLSVObservationExampleDAS28-02)
* derivedFrom[2] = Reference(TLSVObservationExampleDAS28-03)
* derivedFrom[3] = Reference(https://somefhirserver.fr/Observation/9548722577657)

