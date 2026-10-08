# Aria2 Unauthenticated RPC Arbitrary File Write

[Vulhub](https://vulhub.org)'s [`aria2/rce`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/aria2/rce) environment, by
phith0n and the Vulhub contributors: aria2 1.18.8 with its JSON-RPC interface open and no secret, so anyone adds a download and chooses where it is saved, writing a file where it runs. This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machine, and
the machine runs Vulhub's published image `vulhub/aria2:1.18.8`; the environment folder is vendored in [`app/`](app) and the image's Dockerfile in [`base/`](base).

| Machine | Service |
| --- | --- |
| aria2 | aria2 1.18.8 daemon, JSON-RPC on port 6800 |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then point an aria2 RPC client (yaaw or webui-aria2, as in Vulhub's guide) at http://localhost:6800/jsonrpc. The same spec runs as Docker on a local VM (`docker-vm`), on a
cloud VM (`cloud-docker`) or on Kubernetes. Lab guide: Vulhub's
[README](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/aria2/rce/README.md) for this environment, with the walkthrough and references.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

MIT, as Vulhub ([LICENSE](LICENSE)). The vulnerable software inside the image keeps its own licence.
This environment is deliberately vulnerable: keep it isolated.
