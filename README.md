# GrayRice

Personal portfolio + blog powered by Jekyll.  
Blog content is maintained in a separate repository and pulled in via Git submodule.

## Live URL

Project Pages URL:
`https://grayrice.github.io/GrayRice/`

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

- Blog posts are authored in `gray-rice-blogs`.
- This repo includes that repo as a submodule at `external/blog-content`.
- During build, posts are copied into `_posts/`.

## Deploy

Push to `main`. GitHub Actions builds and deploys to GitHub Pages automatically.