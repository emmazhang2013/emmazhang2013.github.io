---
name: emma-blog-publisher
description: Use when the user wants to prepare, publish, or update a post for Emma's Little House at /Users/opc0nt7/codex_ws/emmazhang2013.github.io-src, including formatting a draft, generating an illustration, inserting the image, previewing locally, committing, pushing to MyBlog, and verifying the live GitHub Pages site.
---

# Emma Blog Publisher

This skill handles blog publishing work for Emma's Little House.

## Repo

Work in:

`/Users/opc0nt7/codex_ws/emmazhang2013.github.io-src`

## First Step

Before making changes, read:

- `/Users/opc0nt7/codex_ws/emmazhang2013.github.io-src/POSTING_WORKFLOW.md`

That file is the source of truth for filenames, metadata, images, preview, commit, and push steps.

## Expected Tasks

Use this skill when the user asks to:

- publish a new article
- turn a draft into a post
- add an illustration to a post
- update an existing post
- commit and push blog changes

## Required Workflow

1. Read the user's draft and infer missing metadata when safe.
2. Use `scripts/new_post.sh` to scaffold a new post whenever possible.
3. If an illustration is needed, also use the `imagegen` skill.
4. Save generated images in `assets/images/misc_imgs/`.
5. Insert the image near the top of the post.
6. Run the local preview flow from `POSTING_WORKFLOW.md`.
7. Commit the finished work in the repo.
8. Push to `origin MyBlog`.
9. Verify the live site after deployment.

## Notes

- Preserve the author's voice unless the user asks for a rewrite.
- For non-Latin titles, set the slug explicitly if auto-slugging would be poor.
- If Git asks for a password, use the GitHub PAT rather than the account password.
