FROM medlinux:todobackend-base
MAINTAINER Mohamed Ben Romdhane <medbenromdhane@hotmail.fr>

# Copy application artifacts
COPY target /wheelhouse

# Install application form the local wheelhouse as we are using --no-index -f /wheelhouse
RUN . /appenv/bin/activate && \
    pip install --no-index -f /wheelhouse todobackend && \
    rm -rf /wheelhouse