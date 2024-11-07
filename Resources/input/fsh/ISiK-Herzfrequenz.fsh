Profile: ISiKHerzfrequenz
Parent: VitalSignDE_Herzfrequenz
Id: ISiKHerzfrequenz
* insert ISiKVitalsignCommons
* insert Quantity-MS
* insert Observation-category-VSCat-MS
* code MS
  * coding contains IEEE11073 0..1
  * coding[loinc] MS
  * coding[snomed] MS
  * coding[snomed] from ISiKHerzfrequenzSCTVS
  * coding[IEEE11073] = $IEEE11073#147842

ValueSet: ISiKHerzfrequenzSCTVS
Id: ISiKHerzfrequenzSCTVS
Title: "ISiKHerzfrequenzSCTVS"
Description: "ValueSet des Herzfrequenz SnomedCT Codes in ISiK"
* insert Meta
* $sct#364075005 "Herzfrequenz"

Instance: ISiKHerzfrequenzExample
InstanceOf: ISiKHerzfrequenz
Usage: #example
* meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/heartrate"
* meta.profile[+] = "http://fhir.de/StructureDefinition/observation-de-vitalsign-herzfrequenz"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[snomed] = $sct#364075005 "Heart rate (observable entity)"
* code.coding[IEEE11073] = $IEEE11073#147842 "MDC_ECG_HEART_RATE"
* code.text = "Herzfrequenz"
* subject = Reference(PatientinMusterfrau)
* effectiveDateTime = "2020-10-11"
* valueQuantity = 63 '/min' "per minute"