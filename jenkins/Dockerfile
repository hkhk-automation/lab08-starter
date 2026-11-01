# Jenkins koos plugin'idega (praktikumi osa 6).
# Ehitamine: docker build -t minu-jenkins jenkins/
# Selles failis on viga. Praktikumi osas 6 leiad ja parandad selle.
FROM jenkins/jenkins:lts-jdk21

# Dockeri käsurea klient. Konveieri samm "konteiner" ehitab image'i masina Dockeriga.
COPY --from=docker:27-cli /usr/local/bin/docker /usr/local/bin/docker

# Plugin'id: git ja workflow-aggregator on konveieri jaoks vajalikud,
# pipeline-graph-view näitab konveierit graafiliselt, dark-theme annab tumeda teema.
RUN jenkins-plugin-cli --plugins git workflow-aggregator pipeline-graph-view dark-theme
