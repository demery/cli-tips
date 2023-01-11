```shell
❯ cat data/ds-model-ids.json
{
    "items": {
        "Manuscript": "Q1",
        "Holding": "Q2",
        "DS 2.0 Record": "Q3",
        "Current": "Q4",
        "Non-Current": "Q5",
        "Standard Title": "Q6",
        "Actor (Name Authority)": "Q7",
        "Personal (Name Authority)": "Q8",
        "Corporate (Name Authority)": "Q9",
        "Role (Authority File)": "Q10",
        "Term (Authority File)": "Q11",
        "Language (Authority File)": "Q12",
        "Century (Authority File)": "Q13",
        "Datable": "Q14",
        "Non-datable": "Q15",
        "Place (Authority File)": "Q16",
        "Material (Authority File)": "Q17"
    },
    "properties": {
        "DS ID": "P1",
        "manuscript holding": "P2",
        "described manuscript": "P3",
        "holding institution in authority file": "P4",
        "holding institution as recorded": "P5",
        "holding status": "P6",
        "Institutional ID": "P7",
        "shelfmark": "P8",
        "link to institutional record": "P9",
        "title as recorded": "P10",
        "standard title": "P11",
        "uniform title as recorded": "P12",
        "in original script": "P13",
        "associated name as recorded": "P14",
        "role in authority file": "P15",
        "instance of": "P16",
        "name in authority file": "P17",
        "genre as recorded": "P18",
        "subject as recorded": "P19",
        "term in authority file": "P20",
        "language as recorded": "P21",
        "language in authority file": "P22",
        "production date as recorded": "P23",
        "production century in authority file": "P24",
        "century": "P25",
        "dated": "P26",
        "production place as recorded": "P27",
        "place in authority file": "P28",
        "physical description": "P29",
        "material as recorded": "P30",
        "material in authority file": "P31",
        "note": "P32",
        "acknowledgements": "P33",
        "date added": "P34",
        "date last updated": "P35",
        "latest date": "P36",
        "earliest date": "P37",
        "start time": "P38",
        "end time": "P39",
        "external identifier": "P40",
        "IIIF manifest": "P41",
        "Wikidata QID": "P42",
        "VIAF ID": "P43",
        "External URI": "P44",
        "equivalent property": "P45",
        "formatter URL": "P46",
        "subclass of": "P47"
    }
}%

❯ egrep "[QP]\d+" data/ds-model-ids.json | sed -e 's/"//g'  -e 's/^  *//' -e 's/,//' -e 's/: /|/'
Manuscript|Q1
Holding|Q2
DS 2.0 Record|Q3
Current|Q4
Non-Current|Q5
Standard Title|Q6
Actor (Name Authority)|Q7
Personal (Name Authority)|Q8
Corporate (Name Authority)|Q9
Role (Authority File)|Q10
Term (Authority File)|Q11
Language (Authority File)|Q12
Century (Authority File)|Q13
Datable|Q14
Non-datable|Q15
Place (Authority File)|Q16
Material (Authority File)|Q17
DS ID|P1
manuscript holding|P2
described manuscript|P3
holding institution in authority file|P4
holding institution as recorded|P5
holding status|P6
Institutional ID|P7
shelfmark|P8
link to institutional record|P9
title as recorded|P10
standard title|P11
uniform title as recorded|P12
in original script|P13
associated name as recorded|P14
role in authority file|P15
instance of|P16
name in authority file|P17
genre as recorded|P18
subject as recorded|P19
term in authority file|P20
language as recorded|P21
language in authority file|P22
production date as recorded|P23
production century in authority file|P24
century|P25
dated|P26
production place as recorded|P27
place in authority file|P28
physical description|P29
material as recorded|P30
material in authority file|P31
note|P32
acknowledgements|P33
date added|P34
date last updated|P35
latest date|P36
earliest date|P37
start time|P38
end time|P39
external identifier|P40
IIIF manifest|P41
Wikidata QID|P42
VIAF ID|P43
External URI|P44
equivalent property|P45
formatter URL|P46
subclass of|P47
```