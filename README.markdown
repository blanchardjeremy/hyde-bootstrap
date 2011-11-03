# hyde-bootstrap

A layout for [Hyde][hyde] using the [Bootstrap][bootstrap] framework.


## Demo
I'm working on getting a demo site up. For now, you can look at the [specific Bootstrap example layout][bootstrap_template] this was based on.


## Setup
The simplest way to use this layout is to:

### Using a Zip File
  1. Download the [latest zip archive](https://github.com/auzigog/hyde-bootstrap/zipball/master)
  2. Unzip it
  3. Place the unzipped files wherever you want your new Hyde site to be
  4. From the terminal run `hyde gen` to generate the Bootstrap-based site in it's default state
  5. Poke around on the site by opening mynewsite/deploy/index.html in your browser
 
### Using Git
  1. Run these commands on the terminal:

  ```bash
  git clone http://github.com/auzigog/hyde-bootstrap.git mynewsite
  hyde gen   # To generate the Bootstrap-based site in it's default state
  ```
  3. Poke around on the site by opening mynewsite/deploy/index.html in your browser


## Usage
### Built-in Templates

There are a variety of templates that you can subclass using `{% extends "templatename.j2" %} on the top of your article
or post.

  * `base.j2` - Contains the bulk of the layout logic, but not the best for subclassing because it doesn't have any grid attached to it.
  * `columns.j2` - Has a main content area and a sidebar. Based on Bootstrap's [container-app.html][bootstrap_template] example.
  * `topbar.j2` - Adds a top bar to the base layout

### Custom Templates
To make real use of this package, you will need to create your own templates.

You can subclass `topbar.j2` or `base.j2` to cover most use cases. All of the templates that are provided serve as a
starting point and as an examlpe of possible approaches you can use.


### Adding Content
Look at all of the `.html` files in the `content` directory for an examlpe of how to begin adding your own content.

You can also go to a new directory and run `hyde create mysamplehydesite` to check out their default layout and content.


### Adding CSS
To extend the CSS of a given page, use the `{% block css %}{% endblock %}` block.


## Versions
Built using:

  * Hyde [0.8.3](http://github.com/hyde/hyde/tree/7ce58157a9e74cc767cd602097441b8424a2052f)  ([homepage][hyde])
  * Bootstrap [1.3.0](http://github.com/twitter/bootstrap/tree/f03f7da08beede6e6a92ecc6bf28ca978750cd7a) ([homepage][bootstrap])


## Notes
There's a bit of code mixed in from the [HTML5 Boilerplate](http://html5boilerplate.com/) project for jQuery and and IE PNG fix.


## TODO
List of features I'd like to see added (by me or by you via a pull request!)

  * Write an helper function to automatically calculate grid numbers


## Credits
Built by [Jeremy Blanchard](http://blanchardjeremy.com).


[hyde]: http://hyde.github.com/
[bootstrap]: http://twitter.github.com/bootstrap/
[bootstrap_template]: http://twitter.github.com/bootstrap/examples/container-app.html