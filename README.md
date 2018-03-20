# inger-io-example-shell
Inger.io example for shell usage

Example uses jq to format JSON output. If it's not installed, the response will be printed as plain text.

Usage:
./curl.sh {inger_version} {vendor} {api} {version} {method}

```
git clone https://github.com/felixlehmann/inger-io-example-shell.git
cd example && ./curl.sh v1 google adwords v201710 published
```