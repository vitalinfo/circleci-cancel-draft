# circleci-cancel-draft

CircleCI runs build for Draft PR.
This docker image support cancel build if PR in the `Drfat` status or has `Draft` label. 


```yaml
version: 2
jobs:
  cancel_draft_build:
    parallelism: 1
    docker:
      - image: vitalinfo/circleci-cancel-draft
        environment:
          CIRCLECI_TOKEN: ZZZZZZZZZZZ
          GITHUB_TOKEN:   XXXXXXXXXXX
    steps:
      - run: cancel-draft-build --force

workflows:
  version: 2
  tests:
    jobs:
      - cancel_draft_build
      - ... # other build steps
```

## Deployment

```bash
$ docker build . -t vitalinfo/circleci-cancel-draft && docker push vitalinfo/circleci-cancel-draft
```