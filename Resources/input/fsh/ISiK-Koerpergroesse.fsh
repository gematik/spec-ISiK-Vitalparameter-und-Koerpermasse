Profile: ISiKKoerpergroesse
Parent: VitalSignDE_Koerpergroesse
Id: ISiKKoerpergroesse
* insert ISiKVitalsignCommons
* insert Quantity-MS
* insert Observation-category-VSCat-MS
* code MS
  * coding contains IEEE11073 0..1
  * coding[loinc] MS
  * coding[snomed] MS
  * coding[snomed] from ISiKKoerpergroesseSCTVS
  * coding[IEEE11073] = $IEEE11073#188740

ValueSet: ISiKKoerpergroesseSCTVS
Id: ISiKKoerpergroesseSCTVS
Title: "ISiKKoerpergroesseSCTVS"
Description: "ValueSet des Körpergroesse SnomedCT Codes in ISiK"
* insert Meta
* $sct#1153637007 "Body height"

Instance: ISiKKoerpergroesseExample
InstanceOf: ISiKKoerpergroesse
Usage: #example
* meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/bodyheight"
* meta.profile[+] = "http://fhir.de/StructureDefinition/observation-de-vitalsign-koerpergroesse"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[0] = $loinc#8302-2 "Body height"
* code.coding[+] = $sct#1153637007 "Body height (observable entity)"
* code.coding[IEEE11073] = $IEEE11073#188740 "MDC_LEN_BODY_ACTUAL"
* code.text = "Körpergröße"
* subject = Reference(PatientinMusterfrau)
* effectiveDateTime = "2020-10-11"
* valueQuantity = 174 'cm' "centimeter"