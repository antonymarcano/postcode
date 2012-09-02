postcode
========

A postcode exercise in Javascript

Here are the things you'll need...

phantom-jasmine
---------------
Used to execute the tests.
phantom-jasmine is incorporated via a git submodule. To enable it once you've cloned the repository:

    git submodule init
    git submodule update

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

coffeescript
------------
Used for its build tool, [cake](http://coffeescript.org/documentation/docs/cake.html) and to compile coffeescript examples.

    npm install -g coffee-script

(Leave off -g if you don't want it installed globally)

If you've not done so already, add the node bin directory to your path. You can find the node bin directory with:

    node -g bin
    node bin

Now you're ready
----------------
To run the current example tests:

    cake bake

You should see something like this:

    Starting...
    
    Finished
    -----------------
    4 specs, 0 failures in 0.007s.
    
    ConsoleReporter finished

