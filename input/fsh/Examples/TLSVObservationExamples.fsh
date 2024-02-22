Instance: TLSVObservationExample01
InstanceOf: TLSVObservation
Usage: #example
* status = #final
* code =  http://loinc.org#65502-7 "Falling asleep in past 7 days [QIDS]"
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
* effectiveDateTime = "2023-10-09"
* valueCodeableConcept = http://loinc.org#LA14809-0
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* device = Reference(phd-74E8FFFEFF051C00)
* performer = Reference(ExamplefrPatient001) "Pierre Durand"
* method = http://snomed.info/sct#C010402020702

Instance: TLSVObservationExample02
InstanceOf: TLSVObservation
Usage: #example
* status = #final
* code =  http://loinc.org#65502-7 "Falling asleep in past 7 days [QIDS]"
* code = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C180126 "Fatigue Severity"
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
* effectiveDateTime = "2023-10-09"
* issued = 2023-10-12T13:28:17.239+02:00
* valueCodeableConcept = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C70667 "Severe"
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey
* interpretation[0] = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C70667
* interpretation[+] = http://snomed.info/sct#24484000
* performer = Reference(ExamplefrPatient001) "Pierre Durand"
* method = http://snomed.info/sct#C010402020702