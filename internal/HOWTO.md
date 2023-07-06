# How To?

## Release

### AMD64

Node versions on AMD64 OS arch.

<details>
    <summary><h4>Git</h4></summary>

    ```bash
    git fetch && git checkout master

    # Update the Dockerfile with the new node version - amd64/node:16.20.1-alpine.

    git add Dockerfile

    git commit -m "Added amd64/node:16.20.1-alpine"

    git push origin master

    git tag -a "amd64-16.20.1-alpine" -m "Release - amd64-16.20.1-alpine"

    git push -u origin --tags
    ```

</details>

<details>
    <summary><h4>Docker</h4></summary>

    ```bash
    docker buildx build --tag crowdlinker/nestbox:amd64-16.20.1-alpine .

    docker image ls

    docker push crowdlinker/nestbox:amd64-16.20.1-alpine
    ```

</details>

### ARM64v8

Node versions on ARM64v8 OS arch.

<details>
    <summary><h4>Git</h4></summary>

    ```bash
    git fetch && git checkout arm64v8

    # Update the Dockerfile with the new node version - arm64v8/node:18.16.1-alpine.

    git add Dockerfile

    git commit -m "Added arm64v8/node:18.16.1-alpine"

    git push origin arm64v8

    git tag -a "arm64v8-18.16.1-alpine" -m "Release - arm64v8-18.16.1-alpine"

    git push -u origin --tags
    ```

</details>

<details>
    <summary><h4>Docker</h4></summary>

    ```bash
    docker buildx build --tag crowdlinker/nestbox:arm64v8-18.16.1-alpine .

    docker image ls

    docker push crowdlinker/nestbox:arm64v8-18.16.1-alpine
    ```

</details>
