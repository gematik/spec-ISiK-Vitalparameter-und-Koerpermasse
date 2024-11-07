Profile: ISiKAtemfrequenz
Parent: VitalSignDE_Atemfrequenz
Id: ISiKAtemfrequenz
* insert ISiKVitalsignCommons
* insert Quantity-MS
* insert Observation-category-VSCat-MS
* code MS
  * ^comment = "Motivation: Die Observation wird anhand des Codes als Atemfrequenz identifiziert."
  * coding contains IEEE11073 0..1
  * coding[loinc] MS
    * ^comment = "Motivation: Kodierung der Atemfrequenz nach LOINC."
  * coding[snomed] MS
    * ^comment = "Motivation: Kodierung der Atemfrequenz nach SNOMED CT."
  * coding[snomed] = $sct#86290005
  * coding[IEEE11073] = $IEEE11073#151562

Instance: ISiKAtemfrequenzExample
InstanceOf: ISiKAtemfrequenz
Usage: #example
* meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/resprate"
* meta.profile[+] = "http://fhir.de/StructureDefinition/observation-de-vitalsign-atemfrequenz"
* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* code.coding[loinc] = $loinc#9279-1 "Respiratory rate"
* code.coding[snomed] = $sct#86290005 "Respiratory rate (observable entity)"
* code.coding[IEEE11073] = $IEEE11073#151562 "MDC_RESP_RATE"
* code.text = "Atemfrequenz"
* subject = Reference(PatientinMusterfrau)
* effectiveDateTime = "2019-07-02"
* valueQuantity = 26 '/min' "Atemzüge pro Minute"