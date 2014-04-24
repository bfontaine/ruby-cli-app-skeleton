# Ruby CLI App Skeleton

This project is a personal utility to bootstrap Ruby CLI applications that use
either an external HTTP API or parse HTML.

## Usage

    git clone https://github.com/bfontaine/ruby-cli-app-skeleton.git my-app
    cd my-app
    rm .no-replacement
    # edit values in replace.rb
    vim replace.rb
    ./replace.rb

### Defining values

Values are defined at the top of `replace.rb`. Each key must be a word with
only upper-cased letters and underscores. Each value should be a string. If it
starts with an “equal” symbol (`=`), it can take the same value as another key
(e.g. `=FOO`).

Initial values are:

- `NAME`: the name of the project (for the README)
- `GEM`: the gem name
- `REPO`: the GitHub repository name
- `MODULE`: the main module name
- `BIN`: the name of the binary file (default: same as `GEM`)
- `LIB`: the name of the required file (default: same as `GEM`)
- `AUTHOR`: the author’s name
- `EMAIL`: the author’s email
- `GITHUB_USER`: your GitHub username

You can override a value by giving it on the command-line:

    ./replace.rb FOO=42 BAR="my name"

### Adding placeholders

Placeholders are written with a key between curly brackets (e.g.: `{FOO}`).
They can be in a file’s name and/or its content. If a placeholder is
encountered with no value in `replace.rb`, it’s kept as is.

## What’s provided

* `bin/`, `lib/` and `tests/` directories with basic files in them
* Dependencies: Nokogiri, Trollop, and Fakeweb & test-unit for testing
* Gem specification
* An MIT `LICENSE` file and a `README.md` with SVG badges
* Travis & Coveralls integration (you need to register the repo)
* A `Rakefile` and a `.gitignore` files

This heavily based on the architecture of [`ud`][ud].

Additionally, the script create a fresh git repo and add a remote to your
GitHub repo.


[ud]: https://github.com/bfontaine/ud
