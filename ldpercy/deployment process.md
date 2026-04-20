Deployment process
==================


Github
------


### 0 - Local testing

* [ ] Tests pass

### 1 - Dependencies

* [ ] submodule dependencies have been pushed
* [ ] submodule branch pointers updated & pushed

### 2 - Finalise local Code

On the task branch:

* [ ] `.gitmodules` branch tracking updated
* [ ] task wrapup written & committed
* [ ] update version string in codebase
* [ ] update task header
* [ ] move task doc to 'done' folder with new version string


### 3 - Github pull request
* [ ] create pull request for task branch
* [ ] copy relevant parts of wrapup text to the PR desc
* [ ] review
* [ ] merge - squash (or fast-forward if unimportant)
* [ ] delete task branch

### 4 - Merge changes into local codebase

* [ ] switch to `main`
* [ ] fetch and merge
* [ ] delete the task branch
* [ ] tag the merge commit with new version string, eg `git tag -s "v1.2.3" -m "Tag message"`
* [ ] push version tag to github & any other remotes
* [ ] (if relevant) update version tracking branches and push to github & remotes

### 5 - Github release
* [ ] for major or minor version changes draft a new release; for patch versions update the minor release
* [ ] set the release tag
* [ ] update release notes
* [ ] set as latest release & publish
* [ ] (github pages) verify the deployment has succeeded & test


*Done.*
