# dockerized-sonarqube-cli

Reference implementation of a SonarQube CLI tool, built using Docker.

Refer to [SonarQube CLI from SonarSource](https://github.com/SonarSource/sonarqube-cli)

## HOW TO USE

1. Build it

```bash
docker build -f Containerfile -t sonarqube-cli:1.0.0.2628 .

```

or

```bash
docker build -f Containerfile.al2023 -t sonarqube-cli:1.0.0.2628-al2023 .

```
