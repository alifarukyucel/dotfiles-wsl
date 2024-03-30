# Dotfiles WSL
Dotfiles for lightweight WSL instance, utilized solely for development

## Setup
Clone this repo into ~/.dotfiles and then run setup.sh.

## Packages
List of manually installed packages is packages_list.txt
List of manually (+ automatically) installed packages is packages_list_verbose.txt

### Human Readable Format (HRF)
To list packages in a human readable format, run either of the following:

```dpkg-query -l | less```

```apt list --installed```

### Export Packages
To export all installed packages into packages_list_verbose.txt:

```sudo dpkg-query -f '${binary:Package}\n' -W > packages_list_verbose.txt```

### Import Packages
To install all packages that are listed in packages_list_verbose.txt:

```sudo xargs -a packages_list_verbose.txt apt install```
