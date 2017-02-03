[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Ruby Enumerable IO

## Prerequisites

-   [Ruby Enumerable
    Built-ins](https://github.com/ga-wdi-boston/ruby-enumerable-builtins)
-   [Ruby Object](https://github.com/ga-wdi-boston/ruby-object)
-   [Ruby Object Model](https://github.com/ga-wdi-boston/ruby-object-model)
-   [Ruby Object: `self`](https://github.com/ga-wdi-boston/ruby-object-self)

## Objectives

By the end of this lesson, developers should be able to:

-   Iterate through a file one line at a time.
-   Explain why you should only use the block form of `File.open`.
-   Load data using the CSV library in order to create Ruby objects.

## Preparation

1.  Fork and clone this repository.
    [FAQ](https://github.com/ga-wdi-boston/meta/wiki/ForkAndClone)
1.  Create a new branch, `training`, for your work.
1.  Checkout to the `training` branch.
1.  Install dependencies with `bundle install`.

## Introduction

In Ruby, files, and all IO streams, are Enumerable. You're familiar with files
and folders. Examples of IO streams, other than files, are `stdin`, `stdout`,
and `stderror`.

## Files as lists

Ruby's [File](http://ruby-doc.org/core-2.3.1/File.html) type mixes-in
Enumerable via its parent class, [IO](http://ruby-doc.org/core-2.3.1/IO.html)).
Therefore, we can use all of the Enumerable methods to process files. That
means, to Ruby at least, files are just lists, and we can process them in
chunks, either a character or a line at a time. By default, Ruby will process
files one line at a time.

Other enumerable classes related to working with files include IO (mentioned
above) and [Dir](http://ruby-doc.org/core-2.3.1/Dir.html). Dir is Ruby's
abstraction for working with directory structures.

## Code along - read a file

Using `bin/read_file.rb` we'll read all the lines in a file and print them.

## Lab - count characters, words, and lines in a file

Let's create a script to mimic the behavior of the `wc` (word count) command
line utility in `bin/word_count.rb`.

## Demo - CSV class

We previously used the Ruby class
[CSV](http://ruby-doc.org/stdlib-2.3.1/libdoc/csv/rdoc/CSV.html) to load data
for us. The CSV class is part of the standard library, which means that we can
use it without downloading a gem.

We used CSV for the `bin/people_array.rb` script in [Ruby Array
Methods](https://github.com/ga-wdi-boston/ruby-array-methods).

1.  Watch as I run `bin/people_array.rb`
1.  Note how I inspect the files associated with the script, specifically
    looking for how the `CSV` class is used.

## CSV files

A file containing Comma Separated Values (CSV) is a simple and well supported
 format for data interchange, especially for tabular data.

### Code along - CSV

We'll build a data loader for pets in `lib/pets.rb` using the Ruby standard
 library class [CSV](http://ruby-doc.org/stdlib-2.3.1/libdoc/csv/rdoc/CSV.html).

We'll use a `lambda` - shorthand syntax `->([args]) {[code]}`, see
[Proc](http://ruby-doc.org/core-2.3.1/Proc.html) - to ensure we use properly
formatted symbols as keys when loading data.  In Ruby, lambdas verify the number
of arguments.  Alternatively, we could pass a symbol from
[HeaderConverters](http://ruby-doc.org/stdlib-2.3.1/libdoc/csv/rdoc/CSV.html#HeaderConverters)
as the value for `:header_converters` in the options Hash.

## Challenge

Read two files at the same time using `bin/read_files.rb`.

Look at [Enumerator](http://ruby-doc.org/core-2.3.1/Enumerator.html) which is
 what gets returned when we call `each` on an open file without a block.

We'll need to look briefly at [exception
handling](http://ruby-doc.org/core-2.3.1/Exception.html) as Enumerator relies on
this mechanism.

## Tasks

Developers should run these often!

-   `bin/rake nag`  (or `bundle exec rake nag`):
    runs code quality analysis tools on your code and complains.
-   `bin/rake test` (or `bundle exec rake test`): runs automated tests.
-   `bin/rake` will run both `nag` and `test`

## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
