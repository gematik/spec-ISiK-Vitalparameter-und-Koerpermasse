Profile: SD_MII_ICU_Pulmonalarterieller_Blutdruck
Parent: SD_MII_ICU_Sonstige_Pulsatile_Druecke_Generisch
Id: sd-mii-icu-pulmonalarterieller-blutdruck
Title: "SD MII ICU Pulmonalarterieller Blutdruck"
* code
  * coding[loinc] = $loinc#76284-9
* component[SystolicBP].code
  * coding[IEEE-11073] = urn:iso:std:iso:11073:10101#150045
  * coding contains loinc-detailed 0..*
  * coding[loinc-detailed] = $loinc#8440-0
* component[DiastolicBP].code
  * coding[IEEE-11073] = urn:iso:std:iso:11073:10101#150046
  * coding contains loinc-detailed 0..*
  * coding[loinc-detailed] = $loinc#8385-7
* component[meanBP].code
  * coding[IEEE-11073] = urn:iso:std:iso:11073:10101#150047
  * coding contains loinc-detailed 0..*
  * coding[loinc-detailed] = $loinc#8414-5

Instance: Pulmonalarterieller-Blutdruck
InstanceOf: SD_MII_ICU_Pulmonalarterieller_Blutdruck
Usage: #example
* status = #final
* code
  * coding[snomed] = $sct#75367002 "Blood pressure (observable entity)"
  * coding[loinc] = $loinc#76284-9 "Pulmonary artery Blood pressure"
* subject = Reference(Patient/111)
* effectiveDateTime = "2019-12-23T09:30:10+01:00"
* component[SystolicBP]
  * code
    * coding[loinc] = $loinc#8480-6
    * coding[loinc-detailed] = $loinc#8440-0 "Pulmonary artery Systolic blood pressure"
    * coding[IEEE-11073] = urn:iso:std:iso:11073:10101#150045 "Systolic pulmonary arterial pressure"
  * valueQuantity = 18 'mm[Hg]' "millimeter Mercury column"
* component[meanBP]
  * code
    * coding[loinc] = $loinc#8478-0
    * coding[loinc-detailed] = $loinc#8414-5 "Pulmonary artery Mean blood pressure"
    * coding[IEEE-11073] = urn:iso:std:iso:11073:10101#150047 "Mean pulmonary arterial pressure"
  * valueQuantity = 10 'mm[Hg]' "millimeter Mercury column"
* component[DiastolicBP]
  * code
    * coding[loinc] = $loinc#8462-4
    * coding[loinc-detailed] = $loinc#8385-7 "Pulmonary artery Diastolic blood pressure"
    * coding[IEEE-11073] = urn:iso:std:iso:11073:10101#150046 "Diastolic pulmonary arterial pressure"
  * valueQuantity = 8 'mm[Hg]' "millimeter Mercury column"