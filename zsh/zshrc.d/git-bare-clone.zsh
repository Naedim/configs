# Automatically create a bare clone in .git and check out a usable working tree.
# Intentionally does not delete partial results on failure; inspect and remove
# them manually if you decide they are safe to discard.
git-bare-clone() {
  local url=$1
  local dir=${2:-$(basename "$url" .git)}
  local branch

  if [[ -z "$url" ]]; then
    echo "Usage: git-bare-clone <url> [directory]"
    return 1
  fi

  if [[ -e "$dir" ]]; then
    echo "Error: $dir already exists"
    return 1
  fi

  mkdir -p -- "$dir" || return 1

  git clone --bare -- "$url" "$dir/.git" || {
    echo "Error: clone failed. Left $dir in place for manual cleanup."
    return 1
  }
  git --git-dir="$dir/.git" config core.bare false || return 1
  git --git-dir="$dir/.git" config remote.origin.fetch "+refs/heads/*:refs/remotes/origin/*" || return 1
  git --git-dir="$dir/.git" fetch origin || return 1

  branch=$(git --git-dir="$dir/.git" symbolic-ref --quiet --short HEAD) || {
    echo "Error: could not determine the default branch"
    return 1
  }

  git --git-dir="$dir/.git" --work-tree="$dir" checkout "$branch" || {
    echo "Error: checkout failed. Left $dir in place for manual cleanup."
    return 1
  }
  git --git-dir="$dir/.git" branch --set-upstream-to="origin/$branch" "$branch" >/dev/null || return 1

  cd -- "$dir" || return 1

  echo "Cloned $url into $dir with a working tree."
}
