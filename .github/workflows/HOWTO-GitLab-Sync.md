# GitHub - GitLab Sync of this Repo

> TLDR: This page describes how to setup the sync of this GitHub repo to GitLab.

This main branch of this GitHub Repo is synced to [GitLab](https://gitlab.com/mhfsudo/dotfiles). Therefore three Action Inputs have to be configured:
- gitlab_url
- username
- gitlab_pat

The Project Access Token in GitLab needs the following paramter:
- Role: Maintainer
- Scope: write_repository

More details can be found here: (https://github.com/marketplace/actions/sync-to-gitlab)
