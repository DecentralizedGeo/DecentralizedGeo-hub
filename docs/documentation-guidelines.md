# How to Author and Build Documentation

## Background

The overarching goal of Decentralized Geospatial Collaborative is to research and develop the tooling and applications to be used on top of the decentralized web. Documentation is also apart of that exploration as without good documentation, users are not able to unlock or understand the full potential of decentralization. Therefore, authoring new documentation and improving existing documentation is of great value to the Decentralized Geospatial Collaborative.

## The Documentation System

> There is a secret that needs to be understood in order to write good software documentation: there isn’t one
> thing called documentation, there are four.
>
> – <a href="https://diataxis.fr/" target="_blank">Diátaxis</a>

<a href="https://diataxis.fr/" target="_blank">Diátaxis</a> is a documentation framework where user docs can be _arranged_ into one of four categories:

- **tutorials**
- **how-to guides**
- **technical reference**
- **explanation**

Before you author documentation, I suggest reading <a href="https://diataxis.fr/start-here/" target="_blank">Start here - Diátaxis in five minutes</a> or watching its <a href="https://www.youtube.com/watch?v=t4vKPhjcMZg" target="_blank">accompanying video</a> (or even both, if you’re really keen).

The key insight is that by breaking content up in this way, each of the four types of documentation only has one job so it can really nail it. Plus, it makes it easier to find what you are looking for.

## Building your site

Our documentation is built using <a href="https://mkdocs.org/" target="_blank">MkDocs</a> with the <a href="https://https://squidfunk.github.io/mkdocs-material/" target="_blank">Material mkdocs theme</a>.

To get started, you will need to <a href="https://www.mkdocs.org/user-guide/installation/" target="_blank">install MkDocs</a> and the Material theme plugin. You can do this by running the following pip command:

```bash
pip install mkdocs mkdocs-material
```

Documentation source files are written in Markdown, stored in a directory named `docs` and configured with a single YAML configuration file. Typically, the configuration file is named `mkdocs.yml` and is located in the root of the project. If it is not, you can specify the configuration file with the `-f` flag when running the `mkdocs` command.

```bash
mkdocs build -f path/to/mkdocs.yml
```

When you run `mkdocs build`, the documentation is generated as a static site in a directory named `site`.

After the documentation is built, it's recommend that you view the site locally to ensure that it looks as expected. To do this,

```bash
mkdocs serve
```

This will start a local web server that serves the site at `http://localhost:8000`.

Once you are satisfied with the site and have resolved any issues, you can commit the changes and push them to the repository.

## Publishing your site

We use <a href="https://docs.github.com/en/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site" target="_blank">GitHub Pages</a> to host our documentation. Github Actions can be used to automatically build and deploy to the `gh-pages` branch and available at `https://<username>.github.io/<repository>`.

The following <a href="https://squidfunk.github.io/mkdocs-material/publishing-your-site/?h=pages#gitlab-pages" target="_blank">resource</a> provides details on how to setup a Github Action to automate the deployment of documentation.

## Authoring Workflow

There are several ways to author documentation. The simplest and most straightforward is to author the markdown files directly in the `docs` directory and ensure that the file is referenced in the `nav` section of the `mkdocs.yml` file.

1. Run `mkdocs build` to generate the static html files based on the markdown files found in `docs`
2. Run `mkdocs serve --open` to run a local web server instance that opens the home page into your web browser

For example, if you want to add a new page to the documentation, you would create a new markdown file in the `docs` directory and reference it in the `nav` section of the `mkdocs.yml` file.

```yaml
nav:
  - Home: index.md
  - New Page: new-page.md
```

> :material-tooltip-check-outline: Run `mkdocs serve --open --clean` which will clean the site directory before building the site. This is useful when you want to ensure that the site is built from scratch.

For more information on how to author documentation, please refer to the <a href="https://www.mkdocs.org/user-guide/writing-your-docs/" target="_blank">MkDocs documentation</a>.

## Formatting standards

External links should be opened into a new tab. This can be done by wrapping the link in the following HTML:

```html
Clicking me will open the page, <a href="https://www.markdownguide.org/hacks/#link-targets" target="_blank">Link Targets</a>, in a new tab.
```

which looks like this:

Clicking me will open the page, <a href="https://www.markdownguide.org/hacks/#link-targets" target="_blank">Link Targets</a>, in a new tab.
