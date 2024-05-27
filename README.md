
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
│       └── ci-cd.yml
├── .gitlab-ci.yml
├── Dockerfile
├── docker-compose.yml
├── manifests/
│   ├── deployment.yaml
│   └── service.yaml
├── src/
│   ├── server.js
│   ├── ...
├── .env.example
└── README.md
```

## CI/CD

- **GitHub Actions**: Defined in `.github/workflows/ci-cd.yml`
- **GitLab CI/CD**: Defined in `.gitlab-ci.yml`

## Kubernetes Deployment

Kubernetes manifests are stored in the `manifests/` directory.
