
# PH3AR Web Application

This repository contains the PH3AR web application. It uses GitOps principles for continuous deployment using GitHub and GitLab.

## Resources

- [Awesome GitOps by Weaveworks](https://github.com/weaveworks/awesome-gitops)
- [GitLab GitOps](https://about.gitlab.com/topics/gitops/)

## Repository Structure

```
ph3ar-web/
├── .github/
│   └── workflows/
│       └── apply_changes.yml
├── .gitlab-ci.yml
├── Dockerfile
├── docker-compose.yml
├── manifests/
│   ├── deployment.yaml
│   └── service.yaml
├── scripts/
│   ├── initialize_repo.sh
│   └── commit_push_changes.sh
│   └── apply_changes.sh
├── docs/
│   ├── style_guide.md
│   └── community_guidance.md
├── src/
│   ├── server.js
│   ├── ...
├── .env.example
└── README.md
```

## CI/CD

- **GitHub Actions**: Defined in `.github/workflows/apply_changes.yml`
- **GitLab CI/CD**: Defined in `.gitlab-ci.yml`

## Kubernetes Deployment

Kubernetes manifests are stored in the `manifests/` directory.

## Documentation

- [Style Guide](docs/style_guide.md)
- [Community Guidance](docs/community_guidance.md)

## Setup

1. **Download and extract the zip file**.
2. **Run the setup script**:
   ```bash
   ./scripts/setup.sh <path-to-extracted-directory>
   ```

## Apply Changes

To apply changes from a zip file, run the GitHub Actions workflow or use the `apply_changes.sh` script:
1. **Upload the zip file** to the repository.
2. **Run the GitHub Actions Workflow**:
   - Push a new commit to the `main` branch or manually trigger the workflow from the GitHub Actions tab.
3. **Alternatively, use the script**:
   ```bash
   ./scripts/apply_changes.sh <branch-name> <path-to-zip-file>
   ```

This will initialize the repository, set the remote origin, create a new branch, and push the changes.
