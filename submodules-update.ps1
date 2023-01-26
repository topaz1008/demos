# Pull updated version from original repo
git submodule update --remote --merge
git submodule foreach git checkout master
git submodule foreach git pull origin master

# Make sure we update npm packages
git submodule foreach --recursive npm update
