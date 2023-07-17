# Introduction to Ancient Metagenomics Book

[![DOI](https://zenodo.org/badge/637310118.svg)](https://zenodo.org/badge/latestdoi/637310118)

This is the source material for the [Introduction to Ancient Metagenomics text book](https://spaam-community.github.io/intro-to-ancient-metagenomics-book/) developed for the [SPAAM Summer School: Introduction to Ancient Metagenomics](https://spaam-community.github.io/wss-summer-school/).

## Development notes

This text book has been developed as a [Quarto](https://quarto.org/) Book, allowing for both website and PDF formats.

I highly recommend installing [VS Code](https://code.visualstudio.com/) (or your [preferred text editor/IDE](https://quarto.org/docs/get-started/)) and the corresponding [Quarto extension](https://quarto.org/docs/getting-started/installation.html#vs-code-extension) for development. This allows rendering prior to pushing to GitHub, and debugging of any issues of the website view.

## Locally

If adding a new section chapter:

1. Clone this repository or open on [https://gitpod.io](https://gitpod.io) [^1]
2. Make a new branch e.g. `git switch -c new-chapter`
3. Make a new `.qmd` file in the root directory
4. Images for the chapter should go into `assets/images/chapters/`
   - Do not place in `docs/assets/images/chapters/`!
5. References in BibTex for the chapter should go a `references.bib` file into `assets/references/chapters/<chapter>`
6. Add the `.qmd` file to the `_quarto.yml` config file in the `chapters:` scope
7. Render the book the extensions' `Quarto: Render Book` command, or run the following

   ```bash
   quarto preview intro-to-ancient-metagenomics-book --render all --no-browser --no-watch-inputs
   ```

8. Commit, push to GitHub, and open a PR against the `main` branch [^2]

General tips:

- Use the native markdown syntax for images (`![](assets/images/chapters/<your_image>.png)`)
- For note blocks see the [Quarto docs](https://quarto.org/docs/authoring/callouts.html#callout-types)

## Notes

[^1]: I recommend installing the [gitpod chrome extension](https://chrome.google.com/webstore/detail/gitpod-always-ready-to-co/dodmmooeoklaejobgleioelladacbeki) which adds a nice shortcut button to the github repository next to the green 'code' button.
[^2]: If you're using gitpod and have a 'don't have permissions' error when pushing you may need to do the following: (1) Go to: [https://gitpod.io/user/integrations](https://gitpod.io/user/integrations) (2) Press triple dots next to the GitHub Git Provider (3) Edit permissions so all permissions are ticked _except_ for `read:user`
