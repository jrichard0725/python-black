Docker image to run python black linting

Based on https://github.com/jbbarth/docker-black

Usage:
`docker run -v $(pwd):/code jrichard0725/python-black --check $* .;`