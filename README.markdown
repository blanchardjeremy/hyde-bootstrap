A layout for [Hyde][hyde] using the [Bootstrap][bootstrap] framework.


## Demo
I'm working on getting a demo site up. For now, you can look at the [specific Bootstrap example layout][bootstrap_template] this was based on.


## Setup
The simplest way to use this layout is to:

  # Download and unzip the latest [zip archive](https://github.com/auzigog/hyde-bootstrap/zipball/master)
  cp /path/to/unzipped/directory/hyde-bootstrap/layout ~/Projects/mynewsite
  hyde gen   # To generate the site in it's default state and poke around


## Usage

There are a variety of templates that you can subclass using `{% extends "templatename.j2" %} on the top of your article
or post.

  * `base.j2` - Contains the bulk of the layout logic, but not the best for subclassing because it doesn't have any grid attached to it.
  * `sidebar.j2` - Has a main content area and a sidebar content area as seen in this Bootstrap [example layout][bootstrap_template].
  * `full.j2` - A full-width page without a sidebar (14-unit width grid)

To extend the CSS, use

## Versions
Built using:

  * [Hyde 0.8.3](http://github.com/hyde/hyde/tree/7ce58157a9e74cc767cd602097441b8424a2052f)  [(homepage)][hyde]
  * [Bootstrap 1.3.0](http://github.com/twitter/bootstrap/tree/f03f7da08beede6e6a92ecc6bf28ca978750cd7a) [(homepage)][bootstrap]


## Notes
There's a bit of code mixed in from the [HTML5 Boilerplate](http://html5boilerplate.com/) project.


## TODO
List of features I'd like to see added (by me or by you via a pull request!)

  * Write an helper function to automatically calculate grid numbers


## Credits
Built by [Jeremy Blanchard](http://blanchardjeremy.com).


[hyde]: http://hyde.github.com/
[bootstrap]: http://twitter.github.com/bootstrap/
[bootstrap_template]: http://twitter.github.com/bootstrap/examples/container-app.html