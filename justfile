
# build documentation
build version:
    uv version {{version}}

    cp mkdocs.yml mkdocs.yml.backup

    # insert BORIS version
    sed -i '/    version: /c\INSERT_VERSION' mkdocs.yml
    sed -i 's#INSERT_VERSION#    version: {{version}}#g' mkdocs.yml

    sed -i '/        cover_subtitle: /c\INSERT_PDF_VERSION' mkdocs.yml
    sed -i 's#INSERT_PDF_VERSION#        cover_subtitle: v. {{version}}#g' mkdocs.yml

    uv run mkdocs build

# push web site on github repo
push version:
    git add docs src
    git commit -am "new documentation {{version}}"
    git push
    git status -s

# build and push on github repo
all version: (build version) (push version)

serve:
    uv run mkdocs serve


