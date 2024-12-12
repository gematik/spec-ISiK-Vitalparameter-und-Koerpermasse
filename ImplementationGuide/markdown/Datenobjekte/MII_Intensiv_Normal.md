# MII-Profile - Vitalparameter für die Intensiv- und Normalversorgung

An dieser Stelle werden weitere Festlegungen zu Profilen getroffen, die für die Intensiv- sowie Normalversorgung vorgesehen sind und dem Kontext des Moduls zur Intensivmedizinische Versorgung (ICU) der MII entstammen.

## Motivation zur Übernahme
Im Rahmen des [Moduls zur Intensivmedizinische Versorgung (ICU) der MII](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Intensivmedizin/MonitoringundVitaldaten.html) stellt die MII Profile bereit, die sich für die Verarbeitung von Vitalparametern im Rahmen der intensiv- sowie normalstationären Versorgung eignen.
Die Profile der MII sind medizinisch qualitätsgesichert und weisen eine feingranulare Kodierung vor.

Durch die Übernahme der Profile der MII und Abbildung auf das ISIK-Setting, können feingranular kodierte Profile zu Vitalparametern im Krankenhauskontext genutzt werden - für die Normal- wie für die intensivmedizinische Versorgung.
Insbesondere dienen die Profile der Abbildung des Workflows zur Überleitung zwischen Intensiv- und Normalversorgung (siehe {{pagelink:ImplementationGuide/markdown/UebergreifendeUseCases/Intensivversorgung.md}}).

## Designentscheidung
- Maximale Kardinalitäten von Coding Slices wurden von der MII übernommen
- Die Profil-Eigenschaften der MII-Profile, die den bisherigen, existenten Profilen in ISiK entsprechen, wurden in die existenten Profile übernommen.

## Intensivversorgung - PDMS 

### Normativer Status Intensivversorgung
Für folgende Profile, die den Festlegungen der MII entstammen, gelten gesonderte Festlegungen in Bezug auf die Notwendigkeit der Implementierung durch SW-Hersteller.

**Hinweis:** Hier wird jeweils die Canonical URL geführt. Die Profile lassen sich derzeit über die entsprechende [Simplifier Ressourcen-Seite](https://simplifier.net/isik-vitalparameter-v4/~resources?category=Profile&fhirVersion=R4&sortBy=LastUpdateDate_desc) einsehen.

### Profile und Beispiele für die Intensivversorgung
Folgende Profile MÜSSEN durch PDMS implementiert werden und - was als gleichwertig betrachtet wird - durch KIS, die als Dokumentationssystem in der Akutversorgung dienen (aber nicht durch die weiteren bestätigungsrelevanten Systeme):

- Pulmonalarterieller wedge Blutdruck (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-pulmonalarterieller-blutdruck
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Pulmonalarterieller-wedge-Blutdruck
- Sauerstoffsättigung im Blut preduktal durch Pulsoxymetrie (Obs) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-o2saettigung-im-blut-preduktal-durch-pulsoxymetrie
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Sauerstoffsaettigung-im-Blut-Preduktal-durch-Pulsoxymetrie
- Sauerstoffsättigung im Blut postduktal durch Pulsoxymetrie (Obs) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-o2saettigung-im-blut-postduktal-durch-pulsoxymetrie
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Sauerstoffsaettigung-im-Blut-Postduktal-durch-Pulsoxymetrie
- Linksventrikulaeres Schlagvolumenindex (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-linksventrikulaeres-schlagvolumenindex
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Linksventrikulaeres-Schlagvolumenindex
- Linksv. Schlagvolumenindex durch Indikatorverd. (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-linksventri-schlagvolumenindex-durch-indikatorverd  
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Linksvent-Schlagvolumenindex-Durch-Indikatorverduennung
- Linksv. Schlagvolumen durch Indikatorverdünnung (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-linksventri-schlagvolumen-durch-indikatorverduennung
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Linksventrikulaeres-Schlagvolumen-Durch-Indikatorverduennung
- Pulmonalvaskulärer Widerstandsindex (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-pulmonalvaskulaerer-widerstandsindex
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Pulmonalvaskulaerer-Widerstandsindex
- Systemischer vaskulärer Widerstandsindex (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-systemischer-vaskulaerer-widerstandsindex
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Systemischer-vaskulaerer-Widerstandsindex
- Linksventrikulärer Herzindex (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-links-herzindex-indikatorverduennung
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Linksventrikulaerer-Herzindex
- Herzzeitvolumen (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-herzzeitvolumen
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Herzzeitvolumen
- Linksv. Herzindex durch Indikatorverdünnung (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-links-herzindex-indikatorverduennung
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Linksventrikulaerer-Herzindex-Durch-Indikatorverduennung
- Linksv. Herzzeitvolumen durch Indikatorverdünnung (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-linksventri-herzzeitvolumen-durch-indikatorverd
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Linksventrikulaeres-Herzzeitvolumen-durch-Indikatorverduennung
- Zentralvenöser Druck (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-zentralvenoeser-blutdruck
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Zentralvenoeser-Blutdruck
- Linksatrialer Druck (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-linksatrialer-druck
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Linksatrialer-Druck
- Rechtsatrialer Druck (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-rechtsatrialer-druck
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Rechtsatrialer-Druck
- Rechtsventrikulärer Druck (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-rechtsventrikulaerer-druck
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Rechtsventrikulaerer-Druck
- Linksventrikulärer Druck (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-linksventrikulaerer-druck
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Linksventrikulaerer-Druck
- Pulmonalarterieller Blutdruck (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-pulmonalarterieller-blutdruck
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Pulmonalarterieller-Blutdruck
- Koerpertemperatur Brustwirbelsaeule (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-brustwirbelsaeule
    - Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-Brustwirbelsaeule
- Koerpertemperatur Lendenwirbelsaeule (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-lendenwirbelsaeule
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-Lendenwirbelsaeule
- Koerpertemperatur Halswirbelsaeule (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-halswirbelsaeule
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-Halswirbelsaeule
- Koerpertemperatur Brust (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-brust
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-Brust
- Koerpertemperatur Myokard (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-myokard
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-Myokard
- Koerpertemperatur Atemwege (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-atemwege
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-Atemwege
- Koerpertemperatur Blut (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-blut
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-Blut
- Koerpertemperatur Nasen-Rachen-Raum (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-nasen-rachen-raum
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-Nasen-Rachen-Raum
- Koerpertemperatur Speiseroehre (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-speiseroehre
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-Speiseroehre

## Normalversorgung - alle bestätigungsrelevanten Systeme 

### Normativer Status Normalversorgung
Alle bestätigungsrelevanten Systeme für dieses Modul MÜSSEN Ressourcen verarbeiten können, die zu folgenden Profilen konform sind.


### Profile und Beispiele für die Normalversorgung

- Intrakranieller Druck ICP (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-intrakranieller-druck-icp
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Intrakranieller-Druck-ICP
- Koerpergewicht Percentil altersabhängig (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpergewicht-percentil-altersabhaengig
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpergewicht-Percentile-altersabhaengig 
- Körpergrösse Percentil (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpergroesse-percentil
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpergroesse-Percentil
- Ideales Körpergewicht (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-ideales-koerpergewicht
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Ideales-Koerpergewicht
- Sauerstoffsättigung im art. Blut durch Pulsoxymetrie (Obs) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-o2saettigung-im-arteriellen-blut-durch-pulsoxymetrie
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Sauerstoffsaettigung-im-Arteriellen-Blut-durch-Pulsoxymetrie
- Puls (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-puls
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Puls
- Koerpertemperatur Kern (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-kern
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-Kern
- Koerpertemperatur Gelenk (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-gelenk
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-Gelenk
- Koerpertemperatur Stirn (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-stirn
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-Stirn
- Koerpertemperatur nasal (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-nasal
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-nasal
- Koerpertemperatur Leiste (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-leiste
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-Leiste
- Koerpertemperatur Achsel (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-achsel
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-Achsel 
- Koerpertemperatur unter der Zunge (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-unter-der-zunge
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-unter-der-Zunge
- Koerpertemperatur vaginal (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-vaginal
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-vaginal
- Koerpertemperatur Harnblase (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-harnblase
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-Harnblase 
- Koerpertemperatur rektal (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-rektal
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-rektal
- Koerpertemperatur Trommelfell (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-trommelfell
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-Trommelfell

Weiterhin gelten alle Profile des ISiK Moduls als relevant für die Normalversorgung.

## Hintergrundinformation
Die als "Generisch" ausgewiesenen Profile des [Moduls zur Intensivmedizinische Versorgung (ICU) der MII](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Intensivmedizin/MonitoringundVitaldaten.html) eignen sich nicht zur unmittelbaren Implementierung, sind jedoch dafür geeignet die Implementierung zu Vereinfachen, da sie die geteilten strukturellen Eigenschaften der von ihnen abgeleiteten, spezifischen Profile festlegen.

Die Liste deckt alle Profile ab aus der Subseite [Monitoring und Vitaldaten des MII IGs](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Intensivmedizin/MonitoringundVitaldaten.html) (Stand 8.2.2024).