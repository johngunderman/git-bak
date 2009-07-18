#!/usr/bin/env python

# Author: John Gunderman
# Date: July 17, 2009

# ABOUT
# =====
# git-bak consists of a series of wrappers around git which increase its
# viability as a backup solution. The premise is simple. Git repositories
# are located in the .git/ directory of the folder being tracked. This
# is great for most applications, but for backup it is ill-suited because
# the storage requirement is double that of the content that is being
# backed up (as the backup is stored in the same directory that is
# being backed up). git-bak works by initializing a git repository without
# an actual .git/ sub-directory in the same folder. Instead, git-bak makes
# a symlink to the .git/ directory, which is located wherever you would
# like the backup to exist. Git recognizes the repo through the symlink,
# so we can easily use git-commit to make backups into whatever location
# we choose.
# Instead of doing this manually and having to deal with the symlink and
# associated hassles, git-bak can take care of these details for us.
# All of the git command set is available in any directory using git-bak.



