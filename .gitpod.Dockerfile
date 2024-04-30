FROM gitpod/workspace-full

RUN brew install R
RUN wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.4.553/quarto-1.4.553-linux-amd64.deb
RUN sudo dpkg -i quarto*
RUN rm *.deb
RUN Rscript -e 'install.packages("rmarkdown", repos="https://cloud.r-project.org")'
RUN Rscript -e 'install.packages("languageserver", repos="https://cloud.r-project.org")'
RUN Rscript -e 'install.packages("Rsamtools", repos="https://cloud.r-project.org")'
RUN Rscript -e 'install.packages("tidyverse", repos="https://cloud.r-project.org")'
RUN Rscript -e 'install.packages("cuperdec", repos="https://cloud.r-project.org")'
RUN Rscript -e 'install.packages("viridis", repos="https://cloud.r-project.org")'
RUN Rscript -e 'install.packages("pander", repos="https://cloud.r-project.org")'
RUN Rscript -e 'install.packages("ggrepel", repos="https://cloud.r-project.org")'
RUN sudo apt install -y librsvg2-bin
