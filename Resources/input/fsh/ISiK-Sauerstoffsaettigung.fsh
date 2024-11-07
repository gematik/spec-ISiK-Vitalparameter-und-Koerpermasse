Profile: ISiKSauerstoffsaettigungArteriell
Parent: VitalSignDE_Arterielle_Sauerstoffsaettigung
Id: ISiKSauerstoffsaettigungArteriell
* insert ISiKVitalsignCommons
* insert Quantity-MS
* insert Observation-category-VSCat-MS
* code MS
  * coding contains IEEE11073 0..1
  * coding[loinc] MS
  * coding[snomed] MS
  * coding[IEEE11073] = $IEEE11073#150324

Instance: ISiKSauerstoffsaettigungArteriellExample
InstanceOf: ISiKSauerstoffsaettigungArteriell
Usage: #example
* meta.profile[0] = "http://fhir.de/StructureDefinition/observation-de-vitalsign-sauerstoffsaettigung"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[snomed] = $sct#442476006 "Arterial oxygen saturation"
* code.coding[IEEE11073] = $IEEE11073#150324 "MDC_SAT_O2_ART"
* code.text = "Pulsoximetrische Sauerstoffsättigung"
* subject = Reference(PatientinMusterfrau)
* effectiveDateTime = "2020-10-11"
* valueQuantity = 98 '%' "%"
* component[0].code.coding[0] = $loinc#3151-8 "Inhaled oxygen flow rate"
* component[=].code.coding[+] = $sct#427081008 "Delivered oxygen flow rate"
* component[=].code.text = "Sauerstoffflussrate"
* component[=].valueQuantity = 2 'L/min' "Liter pro Minute"
* component[+].code.coding[0] = $loinc#3150-0 "Inhaled oxygen concentration"
* component[=].code.coding[+] = $sct#250774007 "Inspired oxygen concentration"
* component[=].code.text = "Inspiratorische Sauerstoffkonzentration"
* component[=].valueQuantity = 50 '%' "%"