# GitHub Actions
```bash
git commit -a -m <comment>
git push
git tag -a <tagname> <checksum>
git push origin <tagname>
```

# Locally
## Install
```bash
sudo apt install texlive-latex-extra
```
or
```bash
make install
````

## Run
```bash
pdflatex mc_cv.tex
bibtex mc_cv.aux
pdflatex mc_cv.tex
```
or
```bash
make build
```
