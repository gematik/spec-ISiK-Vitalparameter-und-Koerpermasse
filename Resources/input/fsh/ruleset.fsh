RuleSet: Meta
* ^status = #active
* ^experimental = false
* ^version = "4.0.1_MS-fixes"
* ^publisher = "gematik GmbH"
* ^date = "2024-11-14"

RuleSet: Meta-CapabilityStatement
* status = #active
* experimental = false
* version = "4.0.1_MS-fixes"
* publisher = "gematik GmbH"
* date = "2024-11-14"
* implementationGuide = "https://gematik.de/fhir/isik/ImplementationGuide/ISiK-Vitalparameter|4.0.1_MS-fixes"

RuleSet: supporteProfile-SHALL(canonical, expectation)
* rest.resource[=].supportedProfile[+] = Canonical({canonical})
  * extension.url = $capabilitystatement-expectation
  * extension.valueCode = #{expectation}

RuleSet: supportedLaborProfile
* rest.resource[=].supportedProfile[+] = $iSiKLaboruntersuchungSerumkreatinin
  * extension.url = $capabilitystatement-expectation
  * extension.valueCode = #SHALL
* rest.resource[=].supportedProfile[+] = $iSiKLaboruntersuchungPCT
  * extension.url = $capabilitystatement-expectation
  * extension.valueCode = #SHALL
* rest.resource[=].supportedProfile[+] = $iSiKLaboruntersuchungCRP
  * extension.url = $capabilitystatement-expectation
  * extension.valueCode = #SHALL
* rest.resource[=].supportedProfile[+] = $iSiKLaboruntersuchungHb
  * extension.url = $capabilitystatement-expectation
  * extension.valueCode = #SHALL
* rest.resource[=].supportedProfile[+] = $iSiKLaboruntersuchungTroponin
  * extension.url = $capabilitystatement-expectation
  * extension.valueCode = #SHALL
* rest.resource[=].supportedProfile[+] = $ISiKLaboruntersuchungGFR
  * extension.url = $capabilitystatement-expectation
  * extension.valueCode = #SHALL
* rest.resource[=].supportedProfile[+] = $ISiKLaboruntersuchungThrombozyten
  * extension.url = $capabilitystatement-expectation
  * extension.valueCode = #SHALL
* rest.resource[=].supportedProfile[+] = $ISiKLaboruntersuchungTSH
  * extension.url = $capabilitystatement-expectation
  * extension.valueCode = #SHALL

RuleSet: ISiKVitalsignCommons
* insert Meta
* status MS
  * ^comment = "Motivation MS: Observation.status ist bereits durch die Kardinalität der Basisklasse Observation erzwungen. Dieses Feld dient der Präzisierung des Status der Untersuchung"
  * ^short = "Untersuchungsstatus"
* category MS
  * ^comment = "Motivation MS: Dieses Feld erlaubt die Sortierung und Abfrage anhand der Kategorie der Untersuchung"
  * ^short = "Untersuchungskategorie"
* code MS
  * ^comment = "Motivation MS: Die Observation wird anhand des Codes identifiziert."
  * ^short = "Code"
  * coding[loinc] MS
    * ^comment = "Motivation MS: Kodierung des Vitalparameters mittels LOINC."
  * coding[snomed] MS
    * ^comment = "Motivation MS: Kodierung des Vitalparameters mittels SNOMED CT."
* subject MS
  * ^comment = "Motivation MS: Ein Vitalparameter hat immer einen Patientenbezug"
  * ^short = "Patient"
* encounter MS
  * ^comment = "Motivation MS: Der Behandlungskontext ist für die Interpretation der Untersuchungsergebnisse relevant"
  * ^short = "Behandlungskontext"
* effective[x] MS
  * ^comment = "Motivation MS: Das Datum und die Uhrzeit der Untersuchung sind für die Interpretation der Untersuchungsergebnisse relevant"
  * ^short = "Datum und Uhrzeit der Untersuchung"
* performer MS
  * ^comment = "Motivation MS: Dieses Feld stellt eine präzisierende Angaben zum Zweck der Qualitätsbewertung bereit"
  * ^short = "Untersuchender"
* method MS
  * ^comment = "Motivation MS: Dieses Feld stellt eine präzisierende Angaben zum Zweck der Qualitätsbewertung bereit"
  * ^short = "Untersuchungsmethode"
* device MS
  * ^comment = "Motivation MS: Dieses Feld stellt eine präzisierende Angaben zum Zweck der Qualitätsbewertung bereit"
  * ^short = "Gerät"
* dataAbsentReason MS
  * ^comment = "Motivation MS: Dieses Feld erlaubt die Angabe von Gründen für fehlende Untersuchungsergebnisse"
  * ^short = "Grund für fehlende Untersuchungsergebnisse"

RuleSet: Quantity-MS
* valueQuantity MS
  * ^comment = "Motivation MS: valueQuantity muss für VitalSigns unterstützt werden"
  * ^short = "quantitatives Untersuchungsergebnis"
* valueQuantity.value MS
  * ^comment = "Motivation MS: Eine Quantity soll einen Wert enthalten"
  * ^short = "Wert"
* valueQuantity.unit MS
  * ^comment = "Motivation MS: Eine Quantity soll eine Einheit enthalten"
  * ^short = "Einheit"
* valueQuantity.system MS
  * ^comment = "Motivation MS: Eine Quantity soll ein System mit dem die Einheit kodiert wird enthalten"
  * ^short = "CodeSystem aus dem die Einheit stammt"
* valueQuantity.code MS
  * ^comment = "Motivation MS: Eine Quantity soll einen Code der die Einheit kodiert enthalten"
  * ^short = "Code der Einheit"

RuleSet: Observation-category-VSCat-MS
* category[VSCat] MS
  * ^comment = "Motivation MS: Die Kategorie 'vital-signs' dient der Kategorisierung von Vitalparametern"
  * ^short = "Vitalparameterkategorie"