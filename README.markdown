# hyde-bootstrap

**Updated for the newest bootstrap version**

A layout for [Hyde][hyde] using the [Bootstrap][bootstrap] framework.
Current stable version: v0.3

## Demo
This is based loosely on [this Bootstrap example layout][bootstrap_template]. The fluid columns are
disabled though


## Setup
The simplest way to use this layout is to:

### Using a Zip File
  1. Download the [latest zip archive](https://github.com/anandtrex/hyde-bootstrap/zipball/master)
  2. Unzip it
  3. Place the unzipped files wherever you want your new Hyde site to be
  4. From the terminal run `hyde gen` to generate the Bootstrap-based site in it's default state
  5. Poke around on the site by opening mynewsite/deploy/index.html in your browser

### Using Git

Run these commands on the terminal:

```bash

  #setup a new virtual environment
  virtualenv --no-site-packages --distribute mynewsite/env

  # clone the code into that new enviornment.
  git clone http://github.com/anandtrex/hyde-bootstrap.git mynewsite/env/code

  # change your directory into the virtual environment and run the activate command.
  cd mynewsite/env && activate

  # install the requirements into the virtual environment.
  pip install -r requirements.txt

  # change into the code directory and generate the Bootstrap-based site in it's default state
  cd code && hyde gen

  # start the dev server and surf to http://localhost:8080
  hyde serve
```
Poke around on the site by opening mynewsite/deploy/index.html in your browser


## Usage
### Built-in Templates

There are a variety of templates that you can subclass using `{% extends "templatename.j2" %} on the top of your article
or post.

  * `base.j2` - Contains the bulk of the layout logic, but not the best for subclassing because it doesn't have any grid attached to it.
  * `columns.j2` - Has a main content area and a sidebar. Based on Bootstrap's [fluid.html][bootstrap_template] example.
  * `topbar.j2` - Adds a top bar to the base layout

### Custom Templates
To make real use of this package, you will need to create your own templates.

You can subclass `topbar.j2` or `base.j2` to cover most use cases. All of the templates that are provided serve as a
starting point and as an examlpe of possible approaches you can use.

### Adding Content
Look at all of the `.html` files in the `content` directory for an example of how to begin adding your own content.

You can also go to a separate, fresh directory and run `hyde create mysamplehydesite` to check out their default layout
and content.

### Adding CSS
To extend the CSS of a given page, use the `{% block css %}{% endblock %}` block. You can do this with a `<style>` block
or a `<link>` to a CSS file.

### Publishing
To publish the site, first edit site.yaml to match your preferred publishing (github, sftp, etc). See the
[Hyde README](https://github.com/hyde/hyde/blob/master/README.rst) for details. Then run:

```bash
hyde publish -c prod.yaml
```

Use prod.yaml makes it easy to switch your `site.config.mode` variable to `"production"` which can enable production-only
elements of your site. In the default hyde-bootstrap setup, analytics is only rendered in production mode.

## Versions
Built using:

  * Hyde [0.8.7](http://github.com/hyde/hyde/tree/696adac061ff040d5c5be1c629c94975c146f32a) -- [homepage][hyde], [repo](http://github.com/hyde/hyde)
  * Bootstrap [v3.0.0.rc.2](https://github.com/twbs/bootstrap) -- [homepage][bootstrap], [repo](http://github.com/twitter/bootstrap/)


## Notes
* There's a bit of code mixed in from the [HTML5 Boilerplate](http://html5boilerplate.com/) project for jQuery and and IE PNG fix.
* To update the js and css files of bootstrap to newer versions, run `./update-bootstrap-libs.sh`


## Credits
Built by [Jeremy Blanchard](http://blanchardjeremy.com).
Contributions by [Anand S](https://github.com/anandtrex).

[hyde]: http://hyde.github.com/
[bootstrap]: http://getbootstrap.com/
[bootstrap_template]: http://twitter.github.io/bootstrap/examples/fluid.html
