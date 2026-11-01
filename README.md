# Lab 08 · Automaatne ehitamine ja levitamine (CD)

**Sinu nimi:** _vastus_

**Praktikumi juhend:** <https://hkhk-automation.github.io/devops/week08/lab/>
**Loeng:** <https://hkhk-automation.github.io/devops/week08/lecture/>

See on sinu esitusrepositoorium. Selles on N7 lõpu kood (Flask, testid, `Dockerfile`, CI). Kolleeg on lisanud CD osa ja Jenkinsi failid, ja neis on vigu. Klooni repositoorium masinasse `proxmox1` kausta `~/lab08` ja tee seal juhendi sammud. Asenda selles failis iga `_vastus_` oma tekstiga. Automaatkontroll otsib sõna `_vastus_`, ja kui see on alles, on vastus puudu.

## Mis siin repositooriumis on

| Fail või kaust | Mille jaoks |
|---|---|
| `flask/` | N7 rakendus ja testid, uus route `/versioon` |
| `.github/workflows/ci.yml` | tööd `test` ja `konteiner` (N7) ning `build-and-push` (vigadega) |
| `server/paigalda.sh` | tõmbab image'i GHCR-ist ja käivitab selle serveris (vigadega) |
| `logid/` | `server.txt`: skripti `paigalda.sh` väljund (juhendi osa 5) |
| `jenkins/Dockerfile` | Jenkinsi image koos plugin'idega (vigadega, juhendi osa 6) |
| `Jenkinsfile` | sama konveier Jenkinsis |
| `kodutoo/release.yml` | kodutöö töövoog (vigadega) |

---

## Vead ja parandused

Iga vea kohta kirjuta üks rida. Sümptomiks kopeeri logist või käsu väljundist rida, mis viga näitas. Põhjus ja parandus on kumbki üks lühike lause.

| Viga | Sümptom | Põhjus | Parandus |
|---|---|---|---|
| 1. Registrisse kirjutamine | _vastus_ | _vastus_ | _vastus_ |
| 2. Katkine kood registris | _vastus_ | _vastus_ | _vastus_ |
| 3. Pull request registris | _vastus_ | _vastus_ | _vastus_ |
| 4. Server ei saa image'it | _vastus_ | _vastus_ | _vastus_ |
| 5. Konteiner ei vasta | _vastus_ | _vastus_ | _vastus_ |
| 6. Jenkinsis pole Pythonit | _vastus_ | _vastus_ | _vastus_ |

---

## Küsimused

Igale küsimusele üks lause.

**1.** Miks oli `GITHUB_TOKEN`-il vaikimisi õigus pakette ainult lugeda?

_vastus_

**2.** Miks peab image'i ehitus ootama testide järel?

_vastus_

**3.** Miks ei tohi pull request'i kood registrisse jõuda?

_vastus_

**4.** Miks on serveri tokenil ainult õigus `read:packages`?

_vastus_

**5.** Mida tähendavad `-p 8088:5000` kaks numbrit?

_vastus_

**6.** Mis versioon (räsi) töötab serveris ja kust tead, et see on sama mis GHCR-is?

_vastus_

**7.** Miks ei saa GitHub Jenkinsit ise käivitada ja mida teeb selle asemel `pollSCM`?

_vastus_

---

## Kodutöö (BOONUS)

| Viga | Sümptom | Põhjus | Parandus |
|---|---|---|---|
| K1 | _vastus_ | _vastus_ | _vastus_ |
| K2 | _vastus_ | _vastus_ | _vastus_ |
| K3 | _vastus_ | _vastus_ | _vastus_ |

**K.4** Kumb on serveris parem: `latest` või `v1.0.0`? Miks?

_vastus_
