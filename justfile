
# build the web site
#build version date:
#    sed '/    version: /c\INSERT_VERSION' mkdocs.yml | sed 's#INSERT_VERSION#    version: {{version}}#g' > /tmp/mkdocs.yml_
#    sed '/    release_date: /c\INSERT_VERSION' /tmp/mkdocs.yml_ | sed 's#INSERT_VERSION#    release_date: {{date}}#g' > mkdocs.yml
#    rye run mkdocs build

# push web site
push version:
    git add docs src
    git commit -am "new documentation {{version}}"
    git push


