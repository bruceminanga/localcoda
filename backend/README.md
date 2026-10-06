# CKA Local Runner (Localcoda)

A fast, zero-latency local setup to practice CKA scenarios on Linux without web UI lag or timeouts.

## Prerequisites

* Fedora / Ubuntu / Arch with Docker installed
* `jq` installed (`sudo dnf install -y jq`)
* Docker permissions for current user (`sudo usermod -aG docker $USER`)

## Quickstart

1. **Clone this repository:**

   ```bash
   git clone <your-repo-url> localcoda
   cd localcoda
   ```

2. Clone the scenario course into `scenarios/`:

   ```bash
   mkdir -p scenarios
   git clone https://github.com/SachinHR/scenario-examples.git scenarios/sachin-cka
   ```

3. Launch the interactive menu:

   ```bash
   ./start-lab.sh
   ```

Select any lab number to start practicing on localhost.
