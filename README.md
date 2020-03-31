# osparc-python-runner

oSparc Python Runner

![Github-CI](https://github.com/ITISFoundation/osparc-python-runner/workflows/Github-CI%20Push/PR%20osparc-python-runner/badge.svg)

## Usage

```console
$ make help

$ make devenv
$ source .venv/bin/activate

(.venv)$ make build
(.venv)$ make info-build
(.venv)$ make tests
```

## Workflow

1. The source code shall be copied to the [src](osparc-python-runner/src/osparc_python_runner) folder.
1. The [Dockerfile](osparc-python-runner/src/Dockerfile) shall be modified to compile the source code.
2. The [metadata](osparc-python-runner/metadata) yaml file shall be modified to at least accomodate with the expected inputs/outputs of the service.
3. The [execute](osparc-python-runner/service.cli/execute) shell script shall be modified to run the service using the expected inputs and retrieve the expected outputs.
4. The test input/output shall be copied to [validation](osparc-python-runner/validation).
5. The service docker image may be built and tested as ``make build tests`` (see usage above)

## Versioning

Two versions:

- integration version (e.g. [src/osparc_python_runner/VERSION_INTEGRATION]) is updated with ``make version-integration-*``
- service version (e.g. [src/osparc_python_runner/VERSION]) is updated with ``make version-service-*``

## CI/CD Integration

### Gitlab

add the following in your __gitlab-ci.yml__ file:

```yaml
include:
  - local: '/services/osparc-python-runner/ci/gitlab-ci.yml'
```
