# Resume Build Process

## Development Environment
This project uses a devcontainer for consistent development. Open the project in VS Code with the Dev Containers extension to automatically set up the LaTeX environment.

Pre-commit hooks are configured to lint YAML/JSON files, fix trailing whitespace, and ensure files end with newlines. They run automatically on commits.

## Building Locally
In the devcontainer (or with TeX Live installed):

```bash
make build
```

This compiles the LaTeX document with bibliography.

## GitHub Actions (CI/CD)
The workflow compiles and releases the PDF on tagged commits.

To create a release:
```bash
git commit -a -m "<comment>"
git push
git tag -a <tagname> <commit>
git push origin <tagname>
```

## Manual Local Build (without devcontainer)
If not using the devcontainer:

### Install
```bash
sudo apt install texlive-latex-extra
```
or
```bash
make install
```

### Build
```bash
make build
```
or manually:
```bash
pdflatex mc_cv.tex
bibtex mc_cv.aux
pdflatex mc_cv.tex
```
