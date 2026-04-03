# Emma's Little House

This repository powers Emma's personal blog at <https://emmazhang2013.github.io/>.
It is a Jekyll site built on top of the Minimal Mistakes theme and used for
reading notes, writing practice, and school projects.

## Content

- Book reflections and chapter notes
- English writing practice
- School and academy assignments

## Local Preview

```bash
export PATH="$HOME/.rubies/ruby-3.4.1/bin:$PATH"
hash -r
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
ruby -v
bundle -v
bundle install
bundle exec jekyll serve --host 127.0.0.1 --port 4000
```

Then open <http://127.0.0.1:4000/>.

If Bundler needs a proxy for package downloads, export `HTTP_PROXY` and
`HTTPS_PROXY` before running `bundle install`.

## Important Paths

- `_config.yml`: site metadata and Jekyll configuration
- `_posts/`: blog posts
- `_pages/`: standalone pages such as About and archives
- `_data/navigation.yml`: top navigation links
- `assets/images/misc_imgs/`: images used in posts

## Notes

- The site uses the `mmistakes/minimal-mistakes` remote theme.
- `docs/` and `test/` are upstream theme directories and are excluded from the
  published site.
