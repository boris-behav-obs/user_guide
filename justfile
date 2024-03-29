
# build documentation
build version:
    cp mkdocs.yml mkdocs.yml.backup
    sed -i '/    version: /c\INSERT_VERSION' mkdocs.yml
    sed -i 's#INSERT_VERSION#    version: {{version}}#g' mkdocs.yml
    rye run mkdocs build

# push web site on github repo
push version:
    git add docs src
    git commit -am "new documentation {{version}}"
    git push
    git status -s

# build and push on github repo
all version: (build version) (push version)



