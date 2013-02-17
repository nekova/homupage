# Google Buttons for Sass

`google-buttons-sass` is an SASS-powered version of [CSS3 Google Buttons by Tim O'Donnell](https://github.com/todc/css3-google-buttons), ready to drop right into your Rails apps.

This gem is based off of [bootstrap-sass](https://github.com/thomas-mcdonald/bootstrap-sass), a project by [Thomas McDonald](https://twitter.com/#!/thomasmcdonald_). I replaced Twitter Bootstrap with the Google Buttons project.

This project requires [Twitter Bootstrap](http://twitter.github.com/bootstrap), which can be installed via gem `bootstrap-sass`

You can see a demo of the gem [here](http://blog.timodonnell.com/css3-google-buttons/index.html).

Enjoy.

## Usage

### Rails

In your Gemfile:

    gem 'sass-rails', '~> 3.1'
    gem 'google-buttons-sass'

If you don't have Twitter Bootstrap assets installed into your project manually, you may want to install [bootstrap-sass](https://github.com/thomas-mcdonald/bootstrap-sass):

    gem 'bootstrap-sass', '~> 2.0.4.0'

#### CSS

Import "google-buttons" in your SCSS file of choice to get all of the styles, mixins and variables! We recommend against using `//= require` directives, since none of your other stylesheets will be [able to use](https://github.com/thomas-mcdonald/bootstrap-sass/issues/79#issuecomment-4428595) the awesome mixins that Bootstrap has defined.

    @import "google-buttons";

#### Javascripts

You can include the javascript through two methods. In this case, Sprocket's `//= require` directives are useful, since there is no better alternative.

We have a helper that includes all available javascripts:

    //= require google-buttons

You can also load individual modules, provided you sort out any related dependencies.

    //= require bootstrap-popover (overrides Twitter Bootstrap's popover)
    //= require google-select-dropdown
    //= require google-select

### Compass

`google-buttons-sass`, thanks to Thomas's work on bootstrap-sass, comes with support for Compass, meaning projects that don't use Rails can get in on the fun Bootstrap web.

#### New project

Install the gem and create a new project using the gem.

    gem install google-buttons-sass
    compass create compass-test -r google-buttons-sass --using google-buttons

This will sort a few things out:

* You'll get a starting `styles.scss` ready for your alterations
* You'll get a compiled stylesheet compiled & ready to drop into your application
* We'll also copy the javascripts & images into their respective folders for you, absolutely free of charge! How cool is that?

#### Existing project

Install the gem, add the require statement to the top of your configuration file, and install the extension.

    gem install google-buttons-sass

    # In config.rb
    require 'google-buttons-sass'

    compass install google-buttons

You'll get the same benefits as those starting from scratch. Radical.

## Configuration
Need to configure a variable or two? Simply define the value of the variable you want to change *before* importing Google Buttons. Sass will respect your existing definition rather than overwriting it with the Bootstrap defaults. A list of customisable variables can be found in the [Bootstrap documentation](http://twitter.github.com/bootstrap/less.html#variables).

    $btnPrimaryBackground: #f00;
    @import "google-buttons";

**Note**: It's important that the file you are importing is not named `google-buttons`, since this will cause an import loop. As a general rule, errors are something you should try to avoid.
