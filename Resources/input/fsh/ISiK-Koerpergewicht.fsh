Profile: ISiKKoerpergewicht
Parent: VitalSignDE_Koerpergewicht
Id: ISiKKoerpergewicht
* insert ISiKVitalsignCommons
* insert Quantity-MS
* insert Observation-category-VSCat-MS
* code MS
  * coding contains IEEE11073 0..1
  * coding[loinc] MS
  * coding[snomed] MS
  * coding[snomed] from ISiKKoerpergewichtSCTVS
  * coding[IEEE11073] = $IEEE11073#188736

ValueSet: ISiKKoerpergewichtSCTVS
Id: ISiKKoerpergewichtSCTVS
Title: "ISiKKoerpergewichtSCTVS"
Description: "ValueSet des Körpergewichts SnomedCT Codes in ISiK"
* insert Meta
* $sct#27113001 "Körpergewicht"

Instance: ISiKKoerpergewichtExample
InstanceOf: ISiKKoerpergewicht
Usage: #example
* meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/bodyweight"
* meta.profile[+] = "http://fhir.de/StructureDefinition/observation-de-vitalsign-koerpergewicht"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#29463-7 "Body weight"
* code.coding[snomed] = $sct#27113001 "Body weight"
* code.coding[IEEE11073] = $IEEE11073#188736 "MDC_MASS_BODY_ACTUAL"
* code.text = "Körpergewicht"
* subject = Reference(PatientinMusterfrau)
* effectiveDateTime = "2020-10-11"
* valueQuantity = 79 'kg' "kilogram"