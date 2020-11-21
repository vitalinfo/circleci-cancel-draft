# circleci-autocancel-draft

CircleCI runs build for Draft PR.
This docker image support cacnel build if PR in the `Drfat` status or has `Draft` label. 


```yaml
version: 2
jobs:
  autocancel_draft_build:
    parallelism: 1
    docker:
      - image: vitalinfo/circleci-autocancel-draft
        environment:
          CIRCLECI_TOKEN: ZZZZZZZZZZZ
          GITHUB_TOKEN: XXXXXXXXXXXXX
    steps:
      - run: cancel-draft-build --force

workflows:
  version: 2
  tests:
    jobs:
      - autocancel_draft_build
      - ... # other build steps
```

## Deployment

```bash
$ docker build . -t vitalinfo/circleci-autocancel-draft && docker push vitalinfo/circleci-autocancel-draft
```