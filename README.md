# Waymo Open Dataset Challenge - **2023**

## Overview

The Waymo Open Dataset Challenge is a competition hosted by Waymo, a self-driving technology company. The challenge aims to encourage research and innovation in the field of autonomous driving by providing access to the Waymo Open Dataset, a high-quality dataset of sensor data collected from Waymo's self-driving vehicles.

Participants in the challenge will use the dataset to develop machine learning models that can accurately predict the motion of other road users, such as vehicles, pedestrians, and cyclists. The models will be evaluated based on their ability to predict the future motion of these road users in a variety of scenarios.

## Dataset

The Waymo Open Dataset includes high-resolution sensor data from Waymo's self-driving vehicles, including lidar, radar, and cameras. The dataset also includes accurate ground-truth information for each frame, including the 3D position and velocity of other road users.

The dataset is available for download from the Waymo Open Dataset website. It includes training, validation, and testing sets, each containing thousands of frames of sensor data.

## Challenge Details

The Waymo Open Dataset Challenge is open to participants from around the world. Participants will use the dataset to develop machine learning models that predict the motion of other road users. The models will be evaluated on a set of held-out test data.

The challenge includes a public leaderboard where participants can track their progress and compare their results with others. The top-performing models will be invited to present their work at a workshop hosted by Waymo.

## Prerequisites

Before you can use the provided scripts and tools, you'll need to install a few dependencies:
* Docker (https://www.docker.com/)
* VSCode (https://code.visualstudio.com/)
* `gcloud` command-line tool (https://cloud.google.com/sdk/gcloud/) - for your convenience can be installed with docker-compose as defined [here](docker/wod-2023-ds-management/docker-compose.yml)

## Getting Started

To get started with the challenge, download the Waymo Open Dataset from the official website. Then, explore the dataset and experiment with different machine learning models and techniques to develop a model that accurately predicts the motion of other road users.

## Setting up the Environment with Devcontainer in VSCode

To make it easier to work with the Waymo Open Dataset, you can use VSCode and its built-in support for Docker and devcontainer. Devcontainer is a feature of VSCode that allows you to define a development environment as a container, so that you can work in a consistent and reproducible environment across different machines.

We have included a devcontainer related to the dataset management in the `.devcontainer/dataset-management` folder. This devcontainer includes the necessary dependencies and scripts to download, extract, and manage the Waymo Open Dataset.

This devcontainer relies on a docker-compose.yml file located in the docker/wod-2023-ds-management folder. This file defines the services and configurations needed to run the dataset management scripts.

Here's how to set up the environment using this devcontainer:

1. Make sure you have Docker and VSCode installed on your local machine.
1. Clone the [project repository](https://github.com/aponamarev/WOD-2023-Challenge.git) to your local machine using Git.:
    ```bashscript
    git clone https://github.com/aponamarev/WOD-2023-Challenge.git
    ```
1. In VSCode, open the cloned repository folder by selecting "File" -> "Open Folder" and selecting the folder.
1. In the VSCode command palette (Ctrl/Cmd+Shift+P), select "Remote-Containers: Reopen in Container" and select "From Devcontainer in folder".
1. Select the `.devcontainer/dataset-management` folder as the devcontainer configuration folder.
1. VSCode will generate a Docker container based on the configuration defined in .devcontainer/dataset-management/devcontainer.json. This container includes the necessary dependencies and scripts to download, extract, and manage the Waymo Open Dataset.
1. Start the container by selecting "Remote-Containers: Open Folder in Container" from the VSCode command palette and selecting the `/workspace` folder.
1. Once the container is up and running, you can use the provided scripts in the `scripts` folder to download and extract the Waymo Open Dataset.

Note that the docker-compose.yml file located in docker/wod-2023-ds-management is used to define the services and configurations needed to run the dataset management scripts. This file is automatically picked up by the devcontainer when it starts up. If you need to modify the configuration, you can do so in this file.

Using devcontainer can help ensure that your development environment is consistent across different machines, and can make it easier to share your work with others. If you run into any issues or have any questions, be sure to consult the VSCode and Docker documentation, or reach out to the Waymo team for assistance.

## Downloading Dataset

Before you can start working with the Waymo Open Dataset, you'll need to download it to your local machine. Here's how to do it:

1. Initialize gcloud by running the following command and following the prompts:
    ```bashscript
    gcloud init
    ```
    This will open a web page where you can sign in to your GCP account and grant `gcloud` permission to access your resources.
1. Set the default project for gcloud by running the following command and replacing PROJECT_ID with the ID of the GCP project you want to use:
    ```bashscript
    gcloud config set project PROJECT_ID
    ```
1. Use the provided scripts to download and extract the Waymo Open Dataset. For example, to download the training set, run the following command:
    ```
    ./utils/download_test.sh /path/to/download/directory
    ```
This will download the training set to the specified directory.

