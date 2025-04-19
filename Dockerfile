FROM ghcr.io/douglasdgoulart/buildroot:master

ARG BRANCH=master

# Create and set working directory
WORKDIR /buildroot

RUN git fetch origin ${BRANCH} && \
    git checkout ${BRANCH} && \
    git pull origin ${BRANCH}

# Configure for business card
RUN make business_card_defconfig
RUN make

CMD ["/bin/bash"]
