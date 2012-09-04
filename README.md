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

Then try:

    npm test

You should see something like this:
    
    Starting...
    
    Finished
    -----------------
    6 specs, 0 failures in 0.007s.
    
    ConsoleReporter finished

