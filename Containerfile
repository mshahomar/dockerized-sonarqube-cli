FROM debian:bookworm-slim

# Install dependencies needed for the installer and git integrations
RUN apt-get update && apt-get install -y --no-install-recommends \
  ca-certificates \
  curl \
  git \
  && rm -rf /var/lib/apt/lists/*

# Run the official SonarSource installer script and expose the binary globally
RUN curl -fsSL https://raw.githubusercontent.com/SonarSource/sonarqube-cli/refs/heads/master/user-scripts/install.sh | bash \
  && mv /root/.local/share/sonarqube-cli/bin/sonar /usr/local/bin/sonar

# Verify it works
RUN sonar --version

WORKDIR /workspace
ENTRYPOINT ["sonar"]
