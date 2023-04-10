FROM --platform=arm64 python:3.10-buster AS base
RUN apt update && apt install -y git curl wget nano unzip

# Install GSUTIL
FROM --platform=arm64 base AS gsutil
RUN apt install -y apt-transport-https ca-certificates gnupg
# 1) Add the gcloud CLI distribution URI as a package source.
# 2) Import the Google Cloud Platform public key
# 3) Update and install the gcloud CLI
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" \
    | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg \
    | apt-key --keyring /usr/share/keyrings/cloud.google.gpg  add - && apt-get update -y \
    && apt-get install google-cloud-cli -y
# CMD gcloud init --skip-diagnostics --console-only