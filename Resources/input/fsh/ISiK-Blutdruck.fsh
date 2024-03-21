Profile: ISiKBlutdruck
Parent: VitalSignDE_Blutdruck
Id: ISiKBlutdruck
* insert Meta
* status MS
* category MS
* category[VSCat] MS
* code MS
  * coding[loinc] MS
  * coding[loinc] only ISiKLoincCoding
  * coding[snomed] MS
  * coding[snomed] only ISiKSnomedCTCoding
* subject MS
* encounter MS
* effective[x] MS
* component MS
* component[SystolicBP] MS
* component[SystolicBP].code MS
* component[SystolicBP].code.coding MS
* component[SystolicBP].value[x] MS
* component[SystolicBP].valueQuantity MS
* component[SystolicBP].dataAbsentReason MS
* component[DiastolicBP] MS
* component[DiastolicBP].code MS
* component[DiastolicBP].code.coding MS
* component[DiastolicBP].value[x] MS
* component[DiastolicBP].valueQuantity MS
* component[DiastolicBP].dataAbsentReason MS

Instance: ISiKBlutdruckExample
InstanceOf: ISiKBlutdruck
Usage: #example
* meta.profile[0] = "http://fhir.de/StructureDefinition/observation-de-vitalsign-blutdruck"
* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* code
  * coding[loinc] = $loinc#85354-9 "Blood pressure panel with all children optional"
    * version = "2.77"
  * coding[snomed] = $sct#75367002 "Blood pressure (observable entity)"
    * version = "http://snomed.info/sct/11000274103/version/20231115"
  * text = "Systolischer und Diastolischer Blutdruck"
* subject = Reference(PatientinMusterfrau)
* effectiveDateTime = "2012-09-17"
* performer.reference = "Practitioner/example"
* interpretation = $v3-ObservationInterpretation#L "low"
* interpretation.text = "Below low normal"
* bodySite = $sct#368209003 "Right arm"
* component[SystolicBP].code.coding[0] = $loinc#8480-6
* component[SystolicBP].valueQuantity = 107 'mm[Hg]' "mmHg"
* component[DiastolicBP].code.coding[0] = $loinc#8462-4
* component[DiastolicBP].valueQuantity = 60 'mm[Hg]' "mmHg"