site_name: Helmwave
site_description: 'The helmwave`s docs'
site_author: 'Dmitriy Zhilyaev'
docs_dir: docs/
repo_name: 'helmwave/helmwave'
repo_url: 'https://github.com/helmwave/helmwave'
edit_uri: 'https://github.com/helmwave/helmwave.github.io/edit/main/docs/'
site_url: 'https://helmwave.github.io'
copyright: Copyright © 2020 - 2021 Dmitriy Zhilyaev


nav:
  - Home: index.md
  - install.md
  - examples/quick-start/README.md
  - Configuration:
    - yml/tags/README.md
    - yml/options/README.md
    - yml/store/README.md
    - yml/depends_on/README.md
    - yml/README.md
  - tpl.md
  - Examples:
      - 'Passing image.tag': examples/CI_COMMIT_TAG/README.md
      - 'Passing gitCommit': examples/CI_COMMIT_SHORT_SHA/README.md
      - 'Multiple environments': examples/CI_ENVIRONMENT_NAME/README.md
      - 'Private github helm repostories': examples/GITHUB_TOKEN/README.md
  - anno.md
  - cookbooks.md
  - cli.md
  - ci.md

plugins:
  - search
  - mermaid2
  - include-markdown

theme:
  name: material
  logo: https://raw.githubusercontent.com/helmwave/logo/main/logo.ico
  favicon: https://raw.githubusercontent.com/helmwave/logo/main/logo.ico
  custom_dir: docs/overrides
  features:
  - navigation.top


extra:
  version:
    provider: mike
    default: latest
#  https://github.com/jimporter/mike/issues/64
#  analytics:
#    provider: google
#    property: !ENV GOOGLE_ANALYTICS_KEY
    analytics:
      provider: google
      property: ${GOOGLE_ANALYTICS_KEY}
  social:
  - icon: fontawesome/brands/docker
    link: https://hub.docker.com/diamon/helmwave
  - icon: fontawesome/brands/github
    link: https://github.com/helmwave

markdown_extensions:
  - pymdownx.highlight
  - pymdownx.superfences:
      # make exceptions to highlighting of code:
      custom_fences:
        - name: mermaid
          class: mermaid
          format: !!python/name:mermaid2.fence_mermaid