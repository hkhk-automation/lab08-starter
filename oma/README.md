# Kodutöö: oma failid konveierisse

Siia kausta kopeerid oma varasemate praktikumide failid. Juhend: <https://hkhk-automation.github.io/devops/week08/homework/>

| Kaust | Mis siia tuleb | Kust |
|---|---|---|
| `docker/` | üks `Dockerfile` ja failid, mida see kopeerib (näiteks `index.html`) | Lab 05: `nginx/` või `flask/` |
| `compose/` | `docker-compose.yml`, `app/`, `nginx/` | Lab 06 |
| `ansible/` | `nginx.yml`, `inventory.ini`, `group_vars/`, `templates/` | Lab 04 (või Lab 03) |

Konveier on failis `.github/workflows/oma.yml`. Selle kirjutad ise.

Ära kopeeri siia faile `.vault_pass` ja `.env`. Need on saladused ja `.gitignore` jätab need Gitist välja.
