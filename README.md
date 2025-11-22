# Homebrew Tap for GoFastAPI CLI

Official Homebrew tap for [GoFastAPI CLI](https://github.com/birddigital/gofastapi-cli).

## Installation

```bash
brew tap birddigital/tap
brew install gofastapi
```

## Usage

```bash
# Generate a Go client from any API
gofastapi -u https://api.example.com -o ./client

# With authentication
gofastapi -u https://api.github.com --api-key your_token -o ./github-client

# From OpenAPI spec
gofastapi -u https://petstore3.swagger.io/api/v3/openapi.json -o ./petstore
```

## Updating

```bash
brew update
brew upgrade gofastapi
```

## Documentation

See the [main repository](https://github.com/birddigital/gofastapi-cli) for complete documentation.

## Issues

Report issues at: https://github.com/birddigital/gofastapi-cli/issues
