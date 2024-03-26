Profile: SD_MII_ICU_Pulmonalvaskulaerer_Widerstandsindex
Parent: SD_MII_ICU_Monitoring_Und_Vitaldaten
Id: sd-mii-icu-pulmonalvaskulaerer-widerstandsindex
Title: "SD MII ICU Pulmonalvaskulaerer Widerstandsindex"
* code
  * coding[snomed] = $sct#276902009
  * coding[loinc] = $loinc#8834-4
  * coding[IEEE-11073] = urn:iso:std:iso:11073:10101#152852
* valueQuantity MS
  * ^patternQuantity.system = "http://unitsofmeasure.org"
  * unit 1..
  * code from VS_MII_ICU_Unit_equivalent_UCUM_dyn_s_cm5_m2 (required)

Instance: Pulmonalvaskulaerer-Widerstandsindex
InstanceOf: SD_MII_ICU_Pulmonalvaskulaerer_Widerstandsindex
Usage: #example
* status = #final
* code
  * coding[loinc] = $loinc#8834-4 "Pulmonary vascular Resistance index"
  * coding[snomed] = $sct#276902009 "Pulmonary vascular Resistance index (observable entity)"
  * coding[IEEE-11073] = urn:iso:std:iso:11073:10101#152852 "Pulmonary Vascular Resistance Index"
* subject = Reference(Patient/111)
* effectivePeriod
  * start = "2019-12-23T09:30:10+01:00"
  * end = "2019-12-23T10:30:10+01:00"
* valueQuantity = 80 'dyn.s/(cm5.m2)' "dyne second per centimeter5 and square meter"