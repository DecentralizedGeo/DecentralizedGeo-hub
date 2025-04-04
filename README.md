<div align="center">
<a href="https://decentralizedgeo.org/" target="_blank"><img src="https://avatars.githubusercontent.com/u/199006257?s=150&v=4" /></a>
  <h1>Decentralized Geospatial Hub</h1>
  <p>A collection of resources for the Decentralized Geospatial ecosystem.</p>
</div>

> **All participating developers are highly encouraged to shape and evolve this space!**

## 👋 Welcome

This repository brings together all the documentation resources within the Decentralized Geospatial organization to generate the <a href="https://decentralizedgeo.github.io/DecentralizedGeo-hub/" target="_blank">Decentralized Geospatial Hub</a> page.

## 🚢 How to contribute

Currently, most of the documentation in the `docs` folder is manually retrieved from their respective repositories and organized into the [ecosystem](./docs/ecosystem/) folder. This is a temporary solution until we can automate the process of generating documentation from the repositories.

Please follow the [contributing guidelines](./docs/contribute/contributing-guidelines.md) and [documentation guidelines](./docs/documentation-guidelines.md) for more information on how to contribute overall to Decentralized Geospatial.

## How to add a new project

1. Create a new folder in the `docs/ecosystem/` directory with the name of your project.
2. Inside the new folder, create an `index.md` file that serves as the main entry point for your project documentation.
3. Add additional markdown files as needed to document your project.
4. Update the `mkdocs.yml` file in the root directory to include your new project in the navigation structure. This file defines the structure and layout of the documentation site.

## View modifications locally

To view your modifications locally, you can use the `mkdocs` command-line tool. Follow these steps:
1. Install the python dependencies listed in `pyproject.toml` if you haven't already. You can do this using pip:

   ```bash
   pip install .
   ```

2. Run `mkdocs build` to build the documentation site. This will generate a static site in the `site` directory.
3. Run `mkdocs server --clean --open` to start a local server and open the documentation site in your default web browser. The `--clean` option removes and rebuilds when changes are made in the `docs` directory.

## Publish the documentation

This respository is configured with github actions to automatically publish the documentation to GitHub Pages. Whenever you push changes to the `main` branch, the documentation will be built and deployed to the `gh-pages` branch.

> **Note:** The `gh-pages` branch is a special branch used by GitHub Pages to serve static content. You don't need to manually push to this branch; the GitHub Actions workflow will handle it for you.

You can view the published documentation at [https://decentralizedgeo.github.io/DecentralizedGeo-hub/](https://decentralizedgeo.github.io/DecentralizedGeo-hub/).

## 🎓 License

All design work is licensed under the

[MIT](https://mit-license.org/)
