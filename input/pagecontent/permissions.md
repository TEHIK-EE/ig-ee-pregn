Rollid on kirjeldatud [siin](https://teabekeskus.tehik.ee/et/teenused/tis-teenused/tis-andmevahetus/autoriseerimise-teenuse-kasutajate-rollid).

| Õiguse nimi                          | Roll                                                         | Kirjeldus                       | API                                                                                                                 |
|--------------------------------------|--------------------------------------------------------------|---------------------------------|---------------------------------------------------------------------------------------------------------------------|
| pregn.personal-active-pregnancy.read | consumer (group), consumer-limited (group)                   | Patsiendi raseduse fakti päring | GET /pregnancy/active?patient.identifier={identifier}%7C{personalCode} GET /pregnancy/active?patient.id={patientId} |
| pregn.active-pregnancy.read          | practitioner (group), therapist (group), student, specialist | Patsiendi raseduse fakti päring | GET /pregnancy/active?patient.identifier={identifier}%7C{personalCode} GET /pregnancy/active?patient.id={patientId} |
