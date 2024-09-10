# Introduction to Ancient Metagenomics Book

<img src="assets/images/cover.png" width="20%">

[![DOI](https://zenodo.org/badge/637310118.svg)](https://zenodo.org/badge/latestdoi/637310118)

This is the source material for the [Introduction to Ancient Metagenomics text book](https://spaam-community.github.io/intro-to-ancient-metagenomics-book/) developed for the [SPAAM Summer School: Introduction to Ancient Metagenomics](https://spaam-community.github.io/wss-summer-school/).

## Development notes

This text book has been developed as a [Quarto](https://quarto.org/) Book, allowing for both website and PDF formats.

It is highly recommend to use the [Gitpod environment](#gitpod) to develop new material for the textbook, as it provides a fully set up writing environment.

If running [locally](#locally), I highly recommend installing [VS Code](https://code.visualstudio.com/) (or your [preferred text editor/IDE](https://quarto.org/docs/get-started/)) and the corresponding [Quarto extension](https://quarto.org/docs/getting-started/installation.html#vs-code-extension) for development. This allows rendering prior to pushing to GitHub, and debugging of any issues of the website view. Make sure you also install all the dependincy requirements as described in the `.gitpod.Dockerfile`

### GitPod

1. Fork this repository
2. Open on [https://gitpod.io](https://gitpod.io) [^1]
   - This may take a little bit of time to pull the docker container
   - Once loaded, wait a minute or so until the preview of the textbook is loaded (you will see lots of text being printed in the console)
   - To load the preview, press the 'open preview' button in the bottom right
     ![image](https://github.com/SPAAM-community/intro-to-ancient-metagenomics-book/assets/17950287/cc47d264-eb4e-4fff-94c8-a8da21e9494b)
   - If you miss the message above, press 'Ports' in the bottom right toolbar, and click the running URL to open in a new tab
3. Make a new branch e.g. `git switch -c new-chapter`
4. If adding a new chapter, make a new `.qmd` file in the root directory, else edit the existing `.qmd` file of your choice
5. Images for the chapter should go into `assets/images/chapters/`
   - Do not place in `docs/assets/images/chapters/`!
6. References in BibTex for the chapter should go a `references.bib` file into `assets/references/<chapter_name>.bib`
7. Conda environment files go in `docs/assets/envs/<chapter_name>.bib`
8. If adding a new chapter, add the `.qmd` file to the `_quarto.yml` config file in the `chapters:` scope
9. Refresh the preview tab to check your chapter renders correctly
10. Commit, push to GitHub, and open a PR against the `main` branch [^2]

> ![WARNING]
> Only push `.qmd`, images, `.bib` files etc! Do not push `html` `json` files etc., from the rendering!

General tips:

- Use the native markdown syntax for images (`![](assets/images/chapters/<your_image>.png)`)
- For note blocks see the [Quarto docs](https://quarto.org/docs/authoring/callouts.html#callout-types)

### Locally

If adding a new section chapter:

1. Clone this repository
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

> [!WARNING]
> Only push `.qmd`, images, `.bib` files etc! Do not push `html` `json` files etc., from the rendering!

General tips:

- Use the native markdown syntax for images (`![](assets/images/chapters/<your_image>.png)`)
- For note blocks see the [Quarto docs](https://quarto.org/docs/authoring/callouts.html#callout-types)

## Release procedure

### Before

- Make sure authors updated
  - On authors.qmd
  - In citations.gff
  - In citing-this-book.qmd (set DOI to root DOI)
- Make sure cover images updated (Edition 202X)
- Make sure all data files uploaded, and if necessary Zenodo DOI updated

### After

- In citing-this-book.qmd (set DOI to release DOI)

## Notes

[^1]: I recommend installing the [gitpod chrome extension](https://chrome.google.com/webstore/detail/gitpod-always-ready-to-co/dodmmooeoklaejobgleioelladacbeki) which adds a nice shortcut button to the github repository next to the green 'code' button.
[^2]: If you're using gitpod and have a 'don't have permissions' error when pushing you may need to do the following: (1) Go to: [https://gitpod.io/user/integrations](https://gitpod.io/user/integrations) (2) Press triple dots next to the GitHub Git Provider (3) Edit permissions so all permissions are ticked _except_ for `read:user`
