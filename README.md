# GrayRice

Personal portfolio + blog powered by Jekyll.  
Blog content is maintained in a separate repository and pulled in via Git submodule.

## Live URL

[Project Pages URL](https://gray-rice.github.io/)

## Local setup

1. Install Ruby (>= 3.1), Bundler, and Git.
2. Clone repo:
   ```bash
   git clone https://github.com/GrayRice/GrayRice.git
   cd GrayRice
   ```
3. Add/update submodules:
   ```bash
   git submodule update --init --recursive
   ```
4. Install gems:
   ```bash
   bundle install
   ```
5. Sync blog posts from submodule:
   ```bash
   ./scripts/sync_blog.sh
   ```
6. Run locally:
   ```bash
   bundle exec jekyll serve
   ```
7. Open:
   `http://127.0.0.1:4000/GrayRice/`

## Content workflow

### Repositories
- Blog posts are authored in `gray-rice-blogs`.
- This repo includes that repo as a submodule at `external/blog-content`.
- During the Pages build, posts are copied into this repo’s root `_posts/` via `./scripts/sync_blog.sh`.

### Automated submodule bump PRs
When you push new blog content to the blog repository, a GitHub Actions workflow automatically triggers this repository to:
1. Update the `external/blog-content` submodule pointer to the latest blog commit, and
2. Open (or update) a pull request (PR) on this repo with that submodule bump.

After merging that PR, GitHub Pages rebuilds and publishes the new posts.

> Note: Auto-merge is not enabled yet. For now, you still need to manually merge the generated PR.

## Deploy

- Main site deploys on push to `main` (including merges).
- GitHub Actions builds and deploys to GitHub Pages automatically.
