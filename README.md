# hammer_cli_foreman_google

## Description
CLI tool for Google compute resource in Foreman [foreman_google](https://github.com/theforeman/foreman_google)

## Installation

### Package
```
# yum install tfm-rubygem-hammer_cli_foreman_google
```

### Foreman Installer
```
# foreman-installer --enable-foreman-cli-google
```

### Development Setup

Clone the repo from github:
```bash
git clone https://github.com/theforeman/hammer_cli_foreman_google.git
```

Edit `~/.hammer/cli.modules.d/foreman_google.yml` and enter in the following:
```yaml
:foreman_google:
  :enable_module: true
```
