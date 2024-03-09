<p align="center">
  <a href="" rel="noopener">
 <img width=200px height=200px src="./static/datalake-logo.webp" alt="Project logo"></a>
</p>

<h3 align="center">Kami-Datalake</h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()
[![GitHub Issues](https://img.shields.io/github/issues/devkami/kami-datalake.svg)](https://github.com/devkami/kami-datalake/issues)
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/devkami/kami-datalake.svg)](https://github.com/devkami/kami-datalake/pulls)
[![License](https://img.shields.io/badge/license-GPLv3-blue.svg)](/LICENSE)

</div>

---

<p align="center"> Kami-Datalake is a robust, scalable, and efficient data platform designed to streamline analytics, reporting, and data science projects. Utilizing Docker to orchestrate services such as Metabase for data visualization and Postgres as the database, this setup simplifies the deployment and management of key data infrastructure components. The integration with Traefik ensures secure and flexible routing for services within the platform.
    <br> 
</p>

## 📝 Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Deployment](#deployment)
- [Built Using](#built_using)
- [Version Tracking](#version_tracking)
- [Contributing](#contributing)
- [To Do](#todo)
- [License](#license)
- [Authors](#authors)
- [Acknowledgements](#acknowledgement)

## 🧐 About <a name = "about"></a>

Kami-Datalake has evolved into a versatile toolkit, comprised of bash scripts that function both as a Command-Line Interface (CLI) and a user-friendly interface. This innovative approach simplifies the management of infrastructure required to build and maintain a data lake. It integrates [Metabase](https://www.metabase.com/) for data visualization, [Apache Hop](https://hop.apache.org/) for data engineering, and utilizes [AWS Athena](https://aws.amazon.com/athena/) alongside [AWS S3](https://aws.amazon.com/s3/) buckets with [Parquet](https://parquet.apache.org/) files as the backend database. Additionally, [Traefik](https://traefik.io/traefik/) is employed as an HTTPS server, providing secure and efficient routing for all services within the platform. All services are containerized using [Docker](https://docker.com/), making the project a comprehensive docker container integrator that can be easily extended and adapted for various purposes. This toolset is designed with a focus on flexibility, allowing users to efficiently orchestrate the diverse components needed for a comprehensive data lake solution.

## 🏁 Getting Started <a name = "getting_started"></a>

Ensure you have the necessary tools installed on your system before you begin. The setup process will verify the installation of Docker, Docker Compose, and other prerequisites. It will automatically prompt you for the installation of simpler dependencies and guide you through the setup of more complex ones.

### Prerequisites

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

These tools are crucial for the creation and management of your project's containers. Make sure they are installed and properly configured on your system. For additional dependencies, the setup script will provide guidance on installation and configuration.

### Initializing the Project

#### 1. **Clone the Repository**

Begin by cloning the project repository to your local machine. Open a terminal and execute the following command:

```bash
git clone https://github.com/devkami/kami-datalake.git
```

#### 2. **Navigate to the Project Directory**

Switch to the project directory using:

```bash
cd kami-datalake
```

#### 3. **Execute the Make Script**

Inside the project directory, you'll find a `bin/` directory containing scripts designed to streamline the setup and management of your project. The make script will:

- Verify the installation of Docker, Docker Compose, and other prerequisites.
- Automatically install simpler dependencies, like [fzf (fuzzy finder)](https://github.com/junegunn/fzf).
- Provide instructions for installing and configuring more complex dependencies like Docker and Docker Compose.
- Guide you through importing necessary scripts into the correct folders on your filesystem to add required commands to your PATH.
- Display a simple, bottom-aligned progress bar along with logs to keep you informed about the setup process.

To run the make script, use the following command:

```bash
sudo bash /bin/make-datalake
```

## 🚀 Deployment <a name = "deployment"></a>

Deploying Kami-Datalake is straightforward, whether you prefer the Command Line Interface (CLI) for direct control or the User Interface (UI) for an interactive setup experience. Follow these steps to get your datalake running:

### CLI Deployment

#### 1. **Initialization**

Initialize your datalake environment using `datalake init`. This command will prompt you for essential parameters, such as environment variables, URLs, and service details, to prepare your environment.
 
```bash
  datalake init
```

#### 2. **Starting Services**

With everything set, launch the datalake infrastructure using `datalake start`. This raises all the necessary services.

```bash
  datalake start
```

### UI Deployment

#### **Launch UI Interface**

For a guided setup, start the UI with `datalake ui start`. If it's the first run, the UI will prompt you for the required setup details in an interactive manner.
  
```bash
  datalake ui start
```

> After the setup, the UI opens automatically, providing access to a comprehensive suite of tools for managing and interacting with your datalake. This interactive interface allows for real-time monitoring, configuration adjustments, and much more, all designed to be user-friendly and intuitive.

#### First-Time Setup

Both CLI and UI setups will guide you through the initial configuration process. Have all necessary details ready, such as database connections and service configurations.

#### Post-Deployment

- **CLI Management**: Post-deployment, the CLI offers commands for detailed service management and monitoring.
  
- **UI Management**: After setting up through the UI, the interface itself becomes a powerful tool for managing your datalake. Not only does it allow for initial setup, but it also provides ongoing administration capabilities, monitoring tools, and access to advanced features. The UI is designed to open automatically once setup is complete, offering an integrated environment for all your datalake management needs.

Choosing between CLI and UI depends on your preference for direct commands or graphical interaction. Each method ensures a customized and fully operational datalake tailored to your infrastructure and operational needs.

## ⛏️ Built Using <a name = "built_using"></a>

- Docker - Containerization
- Metabase - Data Visualization
- Apache Hop - Data ingestion pipelines
- Postgres - Database for services
- Traefik - Edge Router
- Version Tracking <a name="version_tracking"></a>


## 📈 Version Control <a name = "versioning"></a>

### latest: [0.1.0](./FEATURES.md#0_1_0)

### [Features](./FEATURES.md)

### [Hotfixes](./HOTFIXES.md)

## 🤝 Contributing <a name = "contributing"></a>

We welcome contributions to the Kami-Datalake project! If you have suggestions for improvements or find any issues, we encourage you to participate. Here's how you can contribute:

### Reporting Issues

**Found a Bug?**

_If you find a bug, please open an issue on our GitHub repository. Provide a detailed description of the issue, including steps to reproduce it, and, if possible, screenshots or error messages._

🐞 [Report a Bug](https://github.com/devkami/kami-datalake/issues/new)

### Making Contributions

_If you'd like to contribute directly to the codebase, please fork the repository and submit your changes via a pull request. Here's a quick guide_:

#### 1. **Fork the Repository**

First step is to create your own copy of the project. Navigate to the Kami-Datalake repository on GitHub and click the "Fork" button in the top-right corner.

<img src="./static/git-repo-forked.svg" alt="Git" width="20" height="20"> [Fork Kami-Datalake](https://github.com/devkami/kami-datalake/fork)

#### 2. **Clone Your Fork**

Once you have your fork, clone it to your local machine to start making changes.

```bash
git clone https://github.com/yourusername/kami-datalake.git
```

Replace `yourusername` with your GitHub username.

#### 3. **Create a New Branch**

Create a new branch in your cloned repository to safely make your changes.

```bash
git checkout -b my-new-feature
```

#### 4. **Implement Your Changes**

Make your desired changes in your new branch, following the project's coding standards.

#### 5. **Merge Changes to Your Local Master**

Before pushing, merge your changes into the local master branch to ensure compatibility.

```bash
# After committing your changes to my-new-feature branch
git checkout master
git merge my-new-feature
# Test to make sure everything works as expected
```

#### 6. **Commit and Push Your Changes**

Commit your changes with a clear message, then push them back to your fork.

```bash
git commit -am 'Add some feature'
git push origin my-new-feature
```

#### 7. **Submit a Pull Request**

Go to the original Kami-Datalake repository to submit a pull request. Compare your `my-new-feature` branch to the main branch of the original repository.

<img src="./static/git-pull-request.svg" alt="Git" width="20" height="20"> [Create Pull Request](https://github.com/devkami/kami-datalake/compare)


### Code of Conduct

Please note that this project is released with a Contributor Code of Conduct. By participating in this project, you agree to abide by its terms.

[Read Code of Conduct](./CONDUCT.md)

Thank you for considering contributing to Kami-Datalake. We look forward to your contributions, big or small!

## 📋 To-Do <a name="todo"></a>

Kami-Datalake is continuously evolving, with new features and improvements on the horizon. Here's a brief overview of our roadmap:

- Enhance the CLI and UI for more intuitive data lake management.
- Expand integration with additional data sources and analytics tools.
- Improve data ingestion and processing capabilities for real-time analytics.

For a detailed list of upcoming features and fixes, please refer to our To-Do list:

📝 [View the To-Do List](./TODO.md)


## 📜 License <a name="license"></a>

This project is licensed under the [GNU General Public License v3.0](./LICENSE) - see the LICENSE file for details.

## ✍️ Authors <a name = "authors"></a>

Maicon de Menezes - Initial work & Project Owner
See also the list of [contributors](./CONTRIBUTORS.md) who participated in this project.

## 🎉 Acknowledgements <a name = "acknowledgement"></a>

Hat tip to anyone whose code was used
Inspiration
References
