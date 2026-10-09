# snowbeluga/homebrew-tap

Homebrew formulae by snowbeluga.

| Formula | |
|---|---|
| [claude-projects](https://github.com/snowbeluga/claude-projects) | terminal picker for jumping between projects and Claude Code sessions |

## claude-projects

```sh
brew install snowbeluga/tap/claude-projects
claude-projects install-shell
```

`install-shell` adds one line to your `~/.zshrc` and/or `~/.bashrc` (with a backup), asks which folders your projects live in, and checks the install. Then open a new terminal tab and run `claude projects`.

Switching from a git install? Run `install-shell` by full path once: `"$(brew --prefix)/opt/claude-projects/bin/claude-projects" install-shell`. Your old `~/.local/bin` link would otherwise run instead.

```sh
brew update && brew upgrade claude-projects                          # update
claude-projects uninstall-shell && brew uninstall claude-projects    # remove
```

Full docs: https://github.com/snowbeluga/claude-projects

## Maintainers

Don't edit the `url` / `sha256` by hand. `scripts/release.sh <version>` in the claude-projects repo tags the release and updates the formula.
