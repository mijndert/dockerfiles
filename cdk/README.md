# AWS CDK in Docker

AWS CDK in a Docker container.

## Usage

Build image:

```
docker build -t cdk .
```

Init a new CDK project using Typescript:

```
docker run -v ~/.aws:/root/.aws -v $(pwd):/opt/app --rm --entrypoint cdk cdk init app --language=typescript
```