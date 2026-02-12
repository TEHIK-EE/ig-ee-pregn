# PREGN API - PREGN - Raseduse fakti tuvastamine v0.1.0

* [**Table of Contents**](toc.md)
* **PREGN API**

## PREGN API

## API kirjeldus

Käesolevas juhendis kirjeldatakse PREGN teenuse poolt pakutavaid äriloogikal põhinevaid REST-otspunkte ning nende kaudu tagastatavaid FHIR standardile vastavaid ressursse. Toodud näidispäringud ja näidisvastused ei kajasta reaalseid andmeid aga vastavad oodatud/toetatud ressursi struktuurile.

### Patsiendi aktiivse raseduse pärimine

Süsteem võtab vastu patsiendi identifiakaatori ja tagastab etteantud patsiendi aktiivse raseduse andmed kui see leidub või tühja vastuse kui aktiivset rasedust ei leidu.

#### Päring patsiendi identifier alusel

**URL**: `GET [base]/pregnancy/active?patient.identifier=[identifier]|[personalCode]`

* identifier: patsiendi identifier'i süsteem (https://fhir.ee/sid/pid/est/ni)
* personalCode: patsiendi identifier'i väärtus (patsiendi isikukood)

#### Vastus

* **HTTP status**: 200 OK

```
HTTP/1.1 200 OK

{
    "resourceType": "Condition",
    "id": "1.3.6.1.4.1.28284.1.3.2.2.8-REF_8d487501-ffae-4391-959b-3343416fb1a0-64-1",
    "contained": [
        {
            "resourceType": "PractitionerRole",
            "id": "participant",
            "practitioner": {
                "identifier": {
                    "system": "urn:oid:1.3.6.1.4.1.28284.6.2.4.9",
                    "value": "D04766"
                }
            },
            "organization": {
                "identifier": {
                    "system": "https://fhir.ee/sid/org/est/br",
                    "value": "90006399"
                }
            }
        }
    ],
    "extension": [
        {
            "url": "http://hl7.org/fhir/StructureDefinition/fm-base-document",
            "valueIdentifier": {
                "system": "1.3.6.1.4.1.28284.1.3.2.2.8",
                "value": "REF_8d487501-ffae-4391-959b-3343416fb1a0"
            }
        },
        {
            "url": "http://hl7.org/fhir/StructureDefinition/fm-base-document-type",
            "valueCoding": {
                "system": "https://fhir.ee/CodeSystem/dokumendi-tyyp",
                "code": "64",
                "display": "Saatekirja vastus"
            }
        }
    ],
    "clinicalStatus": {
        "coding": [
            {
                "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
                "code": "active",
                "display": "Active"
            }
        ]
    },
    "verificationStatus": {
        "coding": [
            {
                "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
                "code": "unconfirmed",
                "display": "Unconfirmed"
            }
        ]
    },
    "code": {
        "coding": [
            {
                "system": "http://snomed.info/sct",
                "code": "77386006",
                "display": "Rase"
            }
        ],
        "text": "Rase"
    },
    "subject": {
        "reference": "Patient/1234567"
    },
    "recordedDate": "2026-01-17T09:30:32+02:00",
    "participant": [
        {
            "function": {
                "coding": [
                    {
                        "system": "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
                        "code": "author",
                        "display": "Author"
                    }
                ]
            },
            "actor": {
                "reference": "#participant"
            }
        }
    ]
}

```

#### Päring patsiendi id alusel

**URL**: `GET [base]/pregnancy/active?patient.id=[patientId]`

* patientId: patsiendi MPI id

#### Vastus

* **HTTP status**: 200 OK

```
HTTP/1.1 200 OK

{
    "resourceType": "Condition",
    "id": "1.3.6.1.4.1.28284.1.3.2.2.8-REF_8d487501-ffae-4391-959b-3343416fb1a0-64-1",
    "contained": [
        {
            "resourceType": "PractitionerRole",
            "id": "participant",
            "practitioner": {
                "identifier": {
                    "system": "urn:oid:1.3.6.1.4.1.28284.6.2.4.9",
                    "value": "D04766"
                }
            },
            "organization": {
                "identifier": {
                    "system": "https://fhir.ee/sid/org/est/br",
                    "value": "90006399"
                }
            }
        }
    ],
    "extension": [
        {
            "url": "http://hl7.org/fhir/StructureDefinition/fm-base-document",
            "valueIdentifier": {
                "system": "1.3.6.1.4.1.28284.1.3.2.2.8",
                "value": "REF_8d487501-ffae-4391-959b-3343416fb1a0"
            }
        },
        {
            "url": "http://hl7.org/fhir/StructureDefinition/fm-base-document-type",
            "valueCoding": {
                "system": "https://fhir.ee/CodeSystem/dokumendi-tyyp",
                "code": "64",
                "display": "Saatekirja vastus"
            }
        }
    ],
    "clinicalStatus": {
        "coding": [
            {
                "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
                "code": "active",
                "display": "Active"
            }
        ]
    },
    "verificationStatus": {
        "coding": [
            {
                "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
                "code": "unconfirmed",
                "display": "Unconfirmed"
            }
        ]
    },
    "code": {
        "coding": [
            {
                "system": "http://snomed.info/sct",
                "code": "77386006",
                "display": "Rase"
            }
        ],
        "text": "Rase"
    },
    "subject": {
        "reference": "Patient/1234567"
    },
    "recordedDate": "2026-01-17T09:30:32+02:00",
    "participant": [
        {
            "function": {
                "coding": [
                    {
                        "system": "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
                        "code": "author",
                        "display": "Author"
                    }
                ]
            },
            "actor": {
                "reference": "#participant"
            }
        }
    ]
}

```

