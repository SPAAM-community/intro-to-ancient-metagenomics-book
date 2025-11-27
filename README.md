# Introduction to Ancient Metagenomics Book

<img src="assets/images/cover.png" width="20%">

[![DOI](https://zenodo.org/badge/637310118.svg)](https://zenodo.org/badge/latestdoi/637310118)

This is the source material for the [Introduction to Ancient Metagenomics text book](https://spaam-community.github.io/intro-to-ancient-metagenomics-book/) developed for the [SPAAM Summer School: Introduction to Ancient Metagenomics](https://spaam-community.github.io/wss-summer-school/).

## Development notes

This text book has been developed as a [Quarto](https://quarto.org/) Book, allowing for both website and PDF formats.

If running [locally](#locally), I highly recommend installing [VS Code](https://code.visualstudio.com/) (or your [preferred text editor/IDE](https://quarto.org/docs/get-started/)) and the corresponding [Quarto extension](https://quarto.org/docs/getting-started/installation.html#vs-code-extension) for development. This allows rendering prior to pushing to GitHub, and debugging of any issues of the website view. Make sure you also install all the dependincy requirements as described in the `Dockerfile`

### Locally

If adding a new section chapter:

1. Clone this repository
2. Make a new branch e.g. `git switch -c new-chapter`
3. Make a new `.qmd` file in the root directory
4. Images for the chapter should go into `assets/images/chapters/`
   - Do not place in `docs/assets/images/chapters/`!
5. References in BibTex for the chapter should go a `references.bib` file into `assets/references/chapters/<chapter>`
6. Add the `.qmd` file to the `_quarto.yml` config file in the `chapters:` scope
7. Render the book the extensions' `Quarto: Render Book` command, or run the following while inside the reposiroty directory

   ```bash
   quarto preview . --render all --no-browser --no-watch-inputs
   ```

8. Commit, push to GitHub, and open a PR against the `main` branch [^2]

> [!WARNING]
> Only push `.qmd`, images, `.bib` files etc! Do not push `html` `json` files etc., from the rendering!

General tips:

- Use the native markdown syntax for images (`![](assets/images/chapters/<your_image>.png)`)
- For note blocks see the [Quarto docs](https://quarto.org/docs/authoring/callouts.html#callout-types)

## Release procedure

### Before

- Check for any major TODOs in the book
- Make sure authors updated
  - On authors.qmd
  - In citations.cff
  - In citing-this-book.qmd (set DOI to root DOI)
- Make sure cover images updated
  - Stating (Edition 202X)
  - Update contributors on jacket back
- Make sure all software installation instructions/conda yaml files are up to date
- Make sure all data files uploaded, and if necessary Zenodo DOI updated
  - Update from previous upload
  - Make sure to bump year to title
  - Version system: YYYY.point release (2024.0, 2024.1)
  - Make sure to update authors if required
- Update Zenodo DOI for in each chapter DOI
- Make sure footnotes year fixed everywhere (\_quarto.yml)
- Update release date in citations.cff

### After

- In citing-this-book.qmd set DOI to release DOI and in CITATIONS.cff

## Notes
