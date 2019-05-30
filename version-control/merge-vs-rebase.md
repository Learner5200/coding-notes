# Git Merge vs Rebase

* Both commands designed to integrate changes from one branch into another


## Merging

* e.g. `git merge master` when on the feature branch
* Creates a new 'merge commit' in the feature branch that ties together the histories of both branches
* Pros
  - non-destructive: can always go back
* Cons
  - pollutes commit history with a bunch of merge commits

![merge](images/2019/04/merge.png)

## Rebasing

* e.g. `git rebase master` while on feature branch
* Moves the entire feature branch to begin on the tip of the master branch-->replays all the commits on top of where master was.
![commit](images/2019/04/commit.png)

* Pros
  - cleaner history: get a completely linear project history with no forks, which is easier to follow
* Cons
  - can be dangerous if  don't  follow golden rule of rebasing -> DONT USE IT WHEN ON A PUBLIC BRANCH
  - if you rebased master on top of a feature branch in your repo, git will think your history has diverged from everyone else's, and you won't be able to solve it without merging it back  together
    - have to force push to get it to work, and that is dangerous!
