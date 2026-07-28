# Deploy & CI/CD playground

Hands-on DevOps exercises for taking a Node.js app to production, in three parts:

- **part-1-nginx/** — nginx as a reverse proxy: virtual hosts, proxying to a Node process, and the config needed to put an app behind a domain.
- **part-2-scripts/** — deployment shell scripts: a local build script and a `deploy.sh` that ships the app to a VM (clone, install, restart).
- **part-3-ci-cd/** — GitHub Actions pipelines, from a minimal CD workflow to a final version (build, SSH deploy), plus the image-scan command used in CI. The live workflow lives in `.github/workflows/ci.yaml`.
- **server/** — the small Express + JWT app (user/admin routes, in-memory DB) used as the deployment target.

Each part is self-contained; read the configs top-to-bottom — they are the documentation.
