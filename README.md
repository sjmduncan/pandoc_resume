The Markdown Resume (pandoc only)
=================================

A HTML-only fork of
[mszep/pandoc_resume](https://github.com/mszep/pandoc_resume). If you
want PDF then print-to-file from chrome does a pretty good job.


### Why

ConTeXt pulls in a bunch of LaTeX stuff which is annoying if you don't
already have it. I already have chromium everywhere that I'm going to
use this, it makes really nice PDFs from HTML.

Also docx and rtf never looked any good coming out of pandoc so
they're gone too.

And finally you only have one easy-to-maintain .css file, and you
don't have to try and wrangle a secondary .tex file to make it match
the css.

### Instructions
```bash
vim resume.md   # insert your own resume info
make
```

### Running Dockerized
```bash
vim resume.md   # insert your own resume info
docker-compose up -d
```

### Requirements

 * pandoc

#### Debian
```bash
sudo apt install pandoc
```

#### Fedora
```bash
sudo dnf install pandoc
```

#### Arch
```bash
sudo pacman -S pandoc
```
