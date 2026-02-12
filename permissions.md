# Õigused API otspunktidele - PREGN - Raseduse fakti tuvastamine v0.1.0

* [**Table of Contents**](toc.md)
* **Õigused API otspunktidele**

## Õigused API otspunktidele

Rollid on kirjeldatud [siin](https://teabekeskus.tehik.ee/et/teenused/tis-teenused/tis-andmevahetus/autoriseerimise-teenuse-kasutajate-rollid).

| | | | |
| :--- | :--- | :--- | :--- |
| pregn.personal-active-pregnancy.read | consumer (group), consumer-limited (group) | Patsiendi raseduse fakti päring | GET /pregnancy/active?patient.identifier={identifier}%7C{personalCode} GET /pregnancy/active?patient.id={patientId} |
| pregn.active-pregnancy.read | practitioner (group), therapist (group), student, specialist | Patsiendi raseduse fakti päring | GET /pregnancy/active?patient.identifier={identifier}%7C{personalCode} GET /pregnancy/active?patient.id={patientId} |

