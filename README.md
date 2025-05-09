CI/CD Pipeline with Docker GitHub Actions & K3s

This project demonstrates a complete Continuos integration and Deploument (CI/CD) pipeline using:
- Docker (multi-stage build)
- GitHub Actions(automated testing and deployments)
- Docker Compose(for integration tests)
- K3s (Kubernets) with k3d (for deployment in lightweight clusters)
- Trivy (for vulnerability scanning)
- GHCR (GitHub Container Registry) and Docker Hub

  Pipeline Stages

  -Build Image for Testing
    Creates a test version of the Docker image with necessary dependencies.
  - Unit Test in Docker
     Runs basic tests inside the test container.
  - Integration Test in Docker Compose
     Spins up services and validates health using a custom script
  - Scan image with Trivy
     Scan the image for known vulnerabilities and CVEs
  -  Deploy in Kubernetes (K3s)
      Uses k3d to create a local Kubernetes cluster and deploys the image
  - Build Final Image
      Builds and pushes a production-ready Docker image to GHCR and Docker Hub
 
  -  
