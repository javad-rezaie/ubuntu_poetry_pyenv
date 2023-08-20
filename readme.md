Sure, I've added the step to grant execute permission to `run.sh` before running it, and I'll provide a command to check the execute permission as well. Here's the updated README:

---

# Python Development Environment for Data Scientists

This repository provides a ready-to-use Python development environment for data scientists on Ubuntu 20.04 or higher using Docker Desktop. The environment includes PyEnv and Poetry for managing Python versions and dependencies. Follow the steps below to get started.

## System Requirements

- Ubuntu 20.04 or higher
- Docker Desktop

## Repository Contents

- `Docker.Dockerfile`: Dockerfile for creating the Ubuntu 22.04-based environment with PyEnv and Poetry.
- `Makefile`: Makefile for building the Docker container.
- `run.sh`: Script to run the Docker container and access the Linux terminal.

## Setup Instructions

1. **Install Docker Desktop:**
   If you haven't already, download and install [Docker Desktop](https://www.docker.com/products/docker-desktop) for your operating system.

2. **Clone the Repository:**
   Clone this repository to your local machine using Git:
   ```bash
   git clone https://github.com/javad-rezaie/ubuntu_env
   cd ubuntu_env
   ```

3. **Grant Execute Permission to `run.sh`:**
   Before running the `run.sh` script, ensure that it has execute permission:
   ```bash
   chmod 774 run.sh
   ```

4. **Build the Docker Container:**
   Use the provided Makefile to build the Docker container:
   ```bash
   make docker-build-ubuntu
   ```

5. **Run the Docker Container:**
   Execute the `run.sh` script to start the Docker container and access the Linux terminal:
   ```bash
   ./run.sh
   ```

6. **Inside the Container:**
   Once inside the container's terminal, you'll have access to the Python environment with PyEnv and Poetry pre-installed. You can use the following commands to manage your environment:
   
   - Use `pyenv` to manage Python versions. Example:
     ```bash
     pyenv install 3.11
     pyenv global 3.11
     ```

   - Use `poetry` to manage Python packages. Example:
     ```bash
     poetry new my-project
     cd my-project
     poetry env use 3.11
     poetry add pandas
     ```

7. **Exit the Container:**
   To exit the container's terminal, simply type:
   ```bash
   exit
   ```

## Additional Notes

- You can customize the Dockerfile and run.sh script to include additional software or configurations as needed.
- Remember that changes made inside the Docker container are not persisted after the container is stopped. Consider using Docker Volumes to persist data between container sessions.

## Troubleshooting

If you encounter any issues or have questions, feel free to [open an issue](https://github.com/javad-rezaie/ubuntu_poetry_pyenv/issues) in this repository.
