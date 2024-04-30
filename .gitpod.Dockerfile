FROM gitpod/workspace-base

# Fix systemd conflict with timedatectl
ENV TZ=UTC

# Return in installation
USER gitpod

RUN sudo apt install -y r-base libharfbuzz-dev libfribidi-dev && sudo apt autoremove -y
RUN sudo Rscript -e 'install.packages("rmarkdown", repos="https://cloud.r-project.org")'
RUN sudo Rscript -e 'install.packages("languageserver", repos="https://cloud.r-project.org")'
RUN sudo Rscript -e 'install.packages("Rsamtools", repos="https://cloud.r-project.org")'
RUN sudo Rscript -e 'install.packages("cuperdec", repos="https://cloud.r-project.org")'
RUN sudo Rscript -e 'install.packages("viridis", repos="https://cloud.r-project.org")'
RUN sudo Rscript -e 'install.packages("pander", repos="https://cloud.r-project.org")'
RUN sudo Rscript -e 'install.packages("ggrepel", repos="https://cloud.r-project.org")'
RUN sudo Rscript -e 'install.packages("tidyverse", repos="https://cloud.r-project.org")'

RUN sudo apt install -y librsvg2-bin
RUN wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.4.553/quarto-1.4.553-linux-amd64.deb
RUN sudo dpkg -i quarto*
RUN rm *.deb
RUN quarto install tinytex

## RUN Rscript -e 'install.packages("tidyverse", repos="https://cloud.r-project.org")'
