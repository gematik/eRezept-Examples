<h2 align="center">PKV-FHIR-Beispiele zum E-Rezept (Profile zum 01.10.2025)</h2>
In diesem Projekt stellt der DAV Beispiele für die bei der Verarbeitung von E-Rezepten auftretenden Dateien in der Apotheke und der Abrechnung zur Verfügung. 
Es wurde darauf geachtet, dass die zu einem Beispiel gehörenden Dateien fachlich und technisch zusammenpassen und soweit wie möglich realistische Informationen enthalten.<p>

**PZN (Mehrfachverordnung) - L-Thyroxin Henning 75 100 Tbl. N3**
- besondere Merkmale: Mehrfachfachverordnung 1 bis 4

**1) PZN - Beloc-Zok® mite 47,5 mg, 30 Retardtabletten N1**

**2) PZN - Venlafaxin - 1 A Pharma® 75mg 100 Tabl. N3**
- besondere Merkmale:
  - Abgabe: generischer Austausch

**3) PZN - INFECTOCORTIKRUPP® Zäpfchen 100 mg 3 Supp. N1**
- besondere Merkmale:
  - Verordnung: Patient ist Kleinkind, Kennzeichen Noctu
  - Abgabe: Notdienst-Gebühr, Zusatzattribut 11 (Abgabe im Notdienst)

**5) PZN - Viani 50µg/250µg 1 Diskus 60 ED N1**
- besondere Merkmale:
  - Verordnung: Verordnung von 2 Packungen
  - Abgabe: Dispensierung von 2 Packungen

**6) PZN - Bisoprolol plus 10/25 - 1 A Pharma® 100 Filmtbl. N3**
- besondere Merkmale:
  - Abgabe: Austausch wegen Nicht-Verfügbarkeit, Dokumentation mit Zusatzattribut 101

**7) PZN - Amoxicillin/Clavulansäure AL 875 mg/125 mg 20 Filmtabletten N2**
- besondere Merkmale:
  - Verordnung: Kennzeichen Noctu
  - Abgabe: Notdienst-Gebühr, Zusatzattribut 11 (Abgabe im Notdienst), Rezeptänderung mit Schlüssel 21 (Abweichung von der Packungsgröße bzw. Packungsanzahl aufgrund von Nichtverfügbarkeit und dringendem Fall bei der Dienstbereitschaft)

**8) PZN - Efluelda Tetra Injektionssuspension 2024/2025
- besondere Merkmale:
  - Verordnung: 1 Fertigspr. ohne Kanüle N1, Kennzeichen Impfstoff
  - Abgabe: Auseinzelung nach Rücksprache mit dem Arzt, Zusatzattribut 16, Rezeptänderung mit Schlüssel 12

**14) PZN - Azithromycin Heumann 500 mg 6 Filmtabletten N2
- besondere Merkmale:
  - Abgabe: Abweichung von Packungsgröße und Packungsanzahl aufgrund Lieferengpass, Rezeptänderung 13

**15) PZN - Benazepril AL 20mg 98 Filmtabletten N3
- besondere Merkmale:
  - Abgabe: Abweichung von Wirkstärke und Packungsanzahl aufgrund  Lieferengpass, Rezeptänderung 13

**16) PZN - Tamoxifen Aristo 20 mg 30 Tabletten N1
- besondere Merkmale:
  - Abgabe: Teilmengenabgabe aufgrund Lieferengpass. Zusatzattribut 16. Rezeptänderung 13

**17) PZN - Doxycyclin 100 - 1 A Pharma® 50 Tbl. N3
- besondere Merkmale:
  - Abgabe: Stückelung mit Teilmengenabgabe aufgrund Lieferengpass, Zusatzattribut 16, Rezeptänderung 13

**18) PZN - Cotrim K-ratiopharm® 200 mg/5 ml + 40 mg/5 ml Suspension zum Einnehmen 100 ml N1
- besondere Merkmale:
  - Abgabe: Abweichung von der Darreichungsform bei Arzneimittel der Dringlichkeitsliste Kinderarzneimittel, Rezeptänderung 14

**1) Rezeptur - Triamcinolonacetonid 0,1 % Basiscreme DAC ad 100,0 g**
- besondere Merkmale:
  - Abgabe: mit Angabe von PZN_SOK und Faktor zu den Bestandteilen, Berücksichtigung des Einwaagekorrekturfaktors

**2) Rezeptur - 100 ml Lösung**
- besondere Merkmale:
  - Verordnung: Salicylsäure 5 g, 2-propanol 70 % Ad 100 g
  - Abgabe: ohne Angabe von PZN/SOK und Faktor zu den Bestandteilen

**Rezeptur - parenterale Zubereitung**
- besondere Merkmale:
  - FlowType Direktzuweisung (209) 
  - Verordnung: 3x 500 ml Infusionslösung  Etoposid 180 mg  NaCl 0,9 % 500 ml
  - Abgabe: Die Preise für die Bestandteile wurden vom GKV-Beispiel mit der gleichen Verordnung aus April 2021 übernommen. Die Zuschläge entsprechen der AMPreisV.

**Freitext - Yellox 0,9 mg/ml Augentropfen**
- besondere Merkmale:
  - Abgabe: Einzelimport, Zusatzattribut 12 (Zusätzliche Abgabeangaben), Beschaffungskosten

**Wirkstoff - Doxycyclin 200 mg Tabletten 30 Stück**
- besondere Merkmale:
  - Abgabe: Stückelung