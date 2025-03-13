# Standard Style Guidelines

This document outlines the general conventions and formats that Decentralized-Geo follows, ensuring consistency across all of our repositories. 

> It may not be the case that a repository follows all of these guidelines. It will be noted in the repository's README if it does not.

## Documenting Code

We generally follow the [Google Style](https://google.github.io/styleguide//) guidelines for commenting and documenting our code. This allows us to generate documentation from our codebase and helps us to maintain a consistent style across all of our repositories. Below are some links to some of the more common languages we use and their respective style guides:

- [Python](https://google.github.io/styleguide/pyguide.html#38-comments-and-docstrings)
  - The [following](https://sphinxcontrib-napoleon.readthedocs.io/en/latest/example_google.html) is an example of Google-style docstrings.
- [JavasScript](https://google.github.io/styleguide/jsguide.html#jsdoc)
- [TypeScript](https://google.github.io/styleguide/tsguide.html#comments-documentation)

## Naming Conventions

The following table outlines the different naming conventions we use for different programming languages:

| Language   | Functions & Methods | Classes     | Interfaces  | Namespaces  | Constants / Globals  |
|------------|---------------------|-------------|-------------|-------------|----------------------|
| Python     | snake_case()        | PascalCase  | N/A         | N/A         | snake_case / SCREAMING_SNAKE_CASE |
| C#         | PascalCase()        | PascalCase  | PascalCase  | PascalCase  | SCREAMING_SNAKE_CASE |
| TypeScript | camelCase()         | PascalCase  | PascalCase  | PascalCase  | SCREAMING_SNAKE_CASE |
| JavaScript | camelCase()         | PascalCase  | PascalCase  | PascalCase  | SCREAMING_SNAKE_CASE |

> Note sure what any of this means? Check out this [article](https://expertbeacon.com/coding-with-style-a-thorough-guide-to-programming-naming-conventions/) to learn more about naming conventions and how they're used.

__Naming Best Practices:__

- Avoid object types in names (user_array, email_method CalculatorClass, ReportModule).
- Prefer naming classes after domain concepts rather than patterns they implement (e.g. Guest vs NullUser, CachedRequest vs RequestDecorator).
- Name the enumeration parameter the singular of the collection.
- Name variables, methods, and classes to reveal intent.
- Treat acronyms as words in names (XmlHttpRequest not XMLHTTPRequest), even if the acronym is the entire name (class Html not class HTML).

---

## General Code Conventions

Start reading our code and you'll get the hang of it. We optimize for readability:

- End files with a newline.
- Avoid platform-dependent code:
  - Use path.join() to concatenate filenames.
  - Use os.tmpdir() rather than /tmp when you need to reference the temporary directory.
- Using a plain return when returning explicitly at the end of a function.
  - Not return null, return undefined, null or undefined
- We indent using four spaces (equivalent to tab)
- We ALWAYS put spaces after list items and method parameters ([1, 2, 3], not [1,2,3]), around operators (x += 1, not x+=1), and around hash arrows.
- Break long lines after 120 characters.
- Delete trailing whitespace.
- Order methods so that caller methods are earlier in the file than the methods they call.
- Order methods so that methods are as close as possible to other methods they call.

> This is open source software. Consider the people who will read your code, and make it look nice for them. It's sort of like driving a car: Perhaps you love doing donuts when you're alone, but with passengers the goal is to make the ride as smooth as possible.

## Version Control Workflow

We follow the [Github Flow](https://docs.github.com/en/get-started/using-github/github-flow) methodology for version control management. Changes to a repository represent a "unit of work" where every change that's worked on is branched off of `main`. By "unit of work", we mean branches that represent feature development, bug fixes, or other changes that are related to a single issue. Once the work is complete, a pull request is opened and reviewed by at least one other team member before being merged back into `main`. If the repository uses production specific github actions, changes to `main` will trigger a build and deployment process.

### Development Standard Operating Procedures

> __TODO__
>
> Add details here outlining a detailed example of how a developer would contribute to a repository following the Github Flow methodology.
> Reference sources:
>
> - [pysal SOP](https://github.com/pysal/pysal/wiki/GitHub-Standard-Operating-Procedures)
> - [Simple contribution steps](https://timothycrosley.github.io/examples/docs/contributing/1.-contributing-guide/#making-a-contribution)
> - [First Contribution Outline](https://github.com/firstcontributions/first-contributions/blob/main/docs/cli-tool-tutorials/github-cli-tutorial.md)
>   - I like how there's [detailed outlines](https://github.com/firstcontributions/first-contributions/tree/main/docs) for contributions for different gui apps and the command line.
> - [STAC FastAPI simple outline](https://github.com/stac-utils/stac-fastapi-pgstac/blob/main/CONTRIBUTING.md)
>

## Development Environment

> __TODO__
>
> Add details here outlining our typical development environment, settings, tools used, etc.
>
> We should also include a section on how to set up a development environment for our repositories in order to contribute.
> Reference sources:
>
> - [GDAL Development Guides](https://gdal.org/en/stable/development/index.html#development)
>
