# GitHub Pages

The Pages workflow publishes the static site in [../site/](../site/) to:

[https://riaevangelist.github.io/murica-llm/](https://riaevangelist.github.io/murica-llm/)

## First Deploy Setup

If the `Publish GitHub Pages` action fails during `Configure Pages` with `Get Pages site failed` or `Not Found`, the repository has not enabled GitHub Pages for custom GitHub Actions workflows yet.

Fix it in GitHub:

1. Open repository `Settings`.
2. Open `Pages`.
3. Under `Build and deployment`, set `Source` to `GitHub Actions`.
4. Re-run the `Publish GitHub Pages` workflow.

The workflow also supports optional auto-enablement. Add a repository secret named `PAGES_ADMIN_TOKEN` that has permission to administer Pages, then re-run the workflow. Without that secret, GitHub's default workflow token can deploy Pages after Pages is enabled, but it cannot enable Pages for the first time.

## Local Review

Review the static site locally from [../site/index.html](../site/index.html) or through the local preview server before pushing page changes.
