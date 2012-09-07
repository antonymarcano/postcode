postcode
========

A postcode exercise in Javascript

Here are the things you'll need...

phantom-jasmine
---------------
Used to execute the tests.
phantom-jasmine is incorporated via a git submodule. To enable it once you've cloned the repository:

    git submodule update --init --recursive

If you encounter any problems refer to [git submodules](http://git-scm.com/book/en/Git-Tools-Submodules) for help.

phantomjs
---------
For phantom-jasmine to work, you'll need [phantomjs](http://phantomjs.org/download.html).

If you're on a Mac, [homebrew](http://mxcl.github.com/homebrew/) is your friend:

    brew install phantomjs

node.js
-------
This is used primarily to run [cake](http://coffeescript.org/documentation/docs/cake.html) to simplify executing tests and to automate building of coffeescript examples.

Install [node.js](http://nodejs.org/).

If you're on a Mac, [homebrew](http://mxcl.github.com/homebrew/) is your friend:

    brew install node

Once you've installed node, just run:

    npm install

You should see some output showing any dependencies being installed.
Tests will then be run showing something like this:

    Starting...
    
    Finished
    -----------------
    4 specs, 0 failures in 0.007s.
    
    ConsoleReporter finished

To run the tests from this point forward you just run:

    npm test

These tests are just examples so you can look around and understand the structure. Once you have your postcode spec and implementation working, feel free to remove those files.

Go ahead and write your `spec/coffee/postcode_spec.coffee` or `spec/js/postcode_spec.js` and run `cake bake` to build and run the tests as you go.
