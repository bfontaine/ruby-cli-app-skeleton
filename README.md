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

## What’s provided

* `bin/`, `lib/` and `tests/` directories with basic files in them
* Dependencies: Nokogiri, Trollop, and Fakeweb & test-unit for testing
* Gem specification
* Travis & Coveralls integration (you need to register the repo)
* An MIT `LICENSE` file and a `README.md`
* A `Rakefile` and a `.gitignore` files

This heavily based on the architecture of [`ud`][ud].

Additionally, the script create a fresh git repo and add a remote to your
GitHub repo.


[ud]: https://github.com/bfontaine/ud
