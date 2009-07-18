
#!/usr/bin/env ruby

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


VER = 0.1
VERSION_STRING = "git-bak v#{VER}"
HELP_STRING = "Help for #{VERSION_STRING}\n
Options:
\tinit -- initialize new backup for the current directory
\t[--help | -h] -- print out this helful help message
\t[--version | -v] -- print out the version of this git-bak
\t[backup | bak] -- create a manual backup now."


def init_dir
  # try to make a git repo in the specified backup dir
  # make a link to the repo from the current dir
  # write config info to current dir
  # .gitignore?
  # cron job?
end

def restore_backup
  # checkout the specified repo to the specified dir
end

def perform_backup
  # add everything new
  # commit with a standard message
end







# go through the argvs

# if init
# promp for backup dir
# assume this dir to back up
# prompt for set time to backup
if ARGV[0].to_s == "init"
  init_dir
end

# if --help | -h
if ARGV[0].to_s == "--help" or ARGV[0].to_s == "-h" and ARGV.size == 1
  puts HELP_STRING
  # TODO
end


# if --version | -v
if ARGV[0].to_s == "--version" or ARGV[0].to_s == "-v" and ARGV.size == 1
  puts VERSION_STRING
end

# if backup
# perform a git-commit
# print out options
if ARGV[0].to_s == "backup" or ARGV[0].to_s == "bak"
  perform_backup
end

# if restore
# prompt for dir to restore to
if ARGV[0].to_s == "restore"
  restore_backup
end

if ARGV.size == 0
  puts HELP_STRING
end


#case ARGV[0].to_s
#when "--help"
  
