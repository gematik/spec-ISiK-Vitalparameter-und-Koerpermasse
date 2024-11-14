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
  * ^comment = "Motivation: Observation.status ist bereits durch die Kardinalität der Basisklasse Observation erzwungen. Dieses Feld dient der Präzisierung des Status der Untersuchung"
* category MS
  * ^comment = "Motivation: Dieses Feld erlaubt die Sortierung und Abfrage anhand von der Kategorie der Untersuchung"
* subject MS
  * ^comment = "Motivation: Eine Untersuchung benötigt immer einen Patientenbezug"
* encounter MS
  * ^comment = "Motivation: Der Behandlungskontext ist für die Interpretation der Untersuchungsergebnisse relevant"
* effective[x] MS
  * ^comment = "Motivation: Das Datum und die Uhrzeit der Untersuchung sind für die Interpretation der Untersuchungsergebnisse relevant"
* performer MS
  * ^comment = "Motivation: Dieses Feld stellt eine präzisierende Angaben zum Zweck der Qualitätsbewertung bereit"
* method MS
  * ^comment = "Motivation: Dieses Feld stellt eine präzisierende Angaben zum Zweck der Qualitätsbewertung bereit"
* device MS
  * ^comment = "Motivation: Dieses Feld stellt eine präzisierende Angaben zum Zweck der Qualitätsbewertung bereit"
* dataAbsentReason MS
  * ^comment = "Motivation: Dieses Feld erlaubt die Angabe von Gründen für fehlende Untersuchungsergebnisse"

RuleSet: Quantity-MS
* value[x] MS
  * ^comment = "Motivation: Der Wert der Untersuchung ist immer relevant"
* valueQuantity MS
  * ^comment = "Motivation: valueQuantity muss für VitalSigns unterstützt werden"
* valueQuantity.value MS
  * ^comment = "Motivation: Eine Quantity soll einen Wert enthalten"
* valueQuantity.unit MS
  * ^comment = "Motivation: Eine Quantity soll eine Einheit enthalten"
* valueQuantity.system MS
  * ^comment = "Motivation: Eine Quantity soll ein System mit dem die Einheit kodiert wird enthalten"
* valueQuantity.code MS
  * ^comment = "Motivation: Eine Quantity soll einen Code der die Einheit kodiert enthalten"
 
RuleSet: Observation-category-VSCat-MS
* category[VSCat] MS
  * ^comment = "Motivation: Die Kategorie 'vital-signs' dient der Kategorisierung von Vitalparametern"