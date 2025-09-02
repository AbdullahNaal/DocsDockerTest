FROM sphinxdoc/sphinx

WORKDIR /docs

# Copy ALL documentation files from host's docs/ to container's /docs/
COPY . .

# Default command - build from current directory
CMD ["sphinx-build", "-b", "html", ".", "_build/html"]