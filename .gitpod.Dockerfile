FROM gitpod/workspace-full

RUN brew install R
RUN wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.3.361/quarto-1.3.361-linux-amd64.deb
RUN sudo dpkg -i quarto*
RUN rm *.deb
RUN Rscript -e 'install.packages("rmarkdown", repos="https://cloud.r-project.org")'
RUN Rscript -e 'install.packages("languageserver", repos="https://cloud.r-project.org")'
RUN sudo apt install -y librsvg2-bin