find . -type f -name "*.b#*" -exec rm -f {} \;
find . -type f -name "*.s#*" -exec rm -f {} \;
find . -type f -name "*.l#*" -exec rm -f {} \;
find . -type f -name "*.csv#*" -exec rm -f {} \;
find . -type f -name "*.DS_Store*" -exec rm -f {} \;
find . -name "__pycache__" -exec rm -rf {} \;
find . -name "duck_app" -exec rm -rf {} \;
zip -rv sample_profiles.zip sample_profiles
git add --all
git commit -m "$@"
git push origin master
