# Sparse

SPA (Single-page application) runtimes for portable builds.

## How It Works

A Sparse runtime replaces Environment Variable references in the SPA entrypoint
HTML with their values from the Environment.

### Example

1. Create the application's `index.html` entrypoint

:bulb: ...or clone this repository and skip to the next step

```html
<!DOCTYPE html>
<html lang="en">
  <body>
    <script type="text/javascript">
      window.config = {
        API: "$API_URL",
      };
    </script>
  </body>
</html>
```

2. Launch the sparse runtime, e.g: [docker-nginx](/docker-nginx)

```console
dev:~$ docker pull ghcr.io/pr-mpt/sparse-docker-nginx
dev:~$ docker run -v $(PWD):/srv -p 8080:8080 -e API_URL="https://api.example.com" ghcr.io/pr-mpt/sparse-docker-nginx
```

3. Observe Environment Variable replacement in page source

```console
dev:~$ open http://localhost:8080
```

```html
<!DOCTYPE html>
<html lang="en">
  <body>
    <script type="text/javascript">
      window.config = {
        API: "https://api.example.com",
      };
    </script>
  </body>
</html>
```

## Specification

- Environment Variables are strings
- Default to empty string value
- Replacement must be performed at startup, may be performed on each request
- `index.html` is the application Entrypoint where variables are replaced
- Passthrough all other paths to the filesystem
- Allow port specification, default to 8080

## Runtimes

- [Docker](/docker-nginx)
- Netlify
- Fly
- Cloudflare Functions
- Binary
