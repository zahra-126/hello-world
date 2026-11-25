# Hello World (AWS Amplify)

A simple Hello World website with two environments: **development** and **staging**.

## Files
- `index.html` - the Hello World page
- `config.development.js` - settings for the development environment
- `config.staging.js` - settings for the staging environment
- `config.js` - the active settings (default: development)
- `amplify.yml` - tells AWS Amplify to pick the right config for each branch

## How environments work
Each environment is a Git branch:

| Branch        | Environment |
|---------------|-------------|
| `development` | development |
| `staging`     | staging     |
| `main`        | main code   |

When Amplify deploys a branch, `amplify.yml` copies `config.<branch>.js` to `config.js`,
so the page shows the correct environment badge.

## Test locally
Double-click `index.html`. You will see "Environment: development".

## Push to GitHub
1. Create an empty repo on github.com (name: `hello-world`, no README).
2. In this folder run:

```
git init
git add .
git commit -m "Initial Hello World"
git branch -M main
git branch development
git branch staging
git remote add origin https://github.com/YOUR-USERNAME/hello-world.git
git push -u origin main development staging
```

## Deploy on AWS Amplify (at the group session)
Amplify -> Create new app -> GitHub -> choose `hello-world` -> pick the branch
(`development` first, then add `staging`).
