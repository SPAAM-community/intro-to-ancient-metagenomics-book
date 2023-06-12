FROM gitpod/workspace-full

RUN brew install R
RUN wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.0.36/quarto-1.0.36-linux-amd64.deb
RUN sudo dpkg -i quarto*
RUN rm *.deb
