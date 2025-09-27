# Shell  
  
curl --request GET \  
--url "https://api.github.com/repos/octocat/Spoon-Knife/issues" \  
--header "Accept: application/vnd.github+json" \  
--header "Authorization: Bearer YOUR-TOKEN"  
helm repo add weblate https://helm.weblate.org
helm install my-release weblate/weblate

# create paths
mkdir -p schema src tests examples notebooks .github/workflows

# add files (copy/paste the content from this document into files)
# then
git add .
git commit -m "Add schema, CI workflow, validators, examples and CONTRIBUTING"
git push origin main
