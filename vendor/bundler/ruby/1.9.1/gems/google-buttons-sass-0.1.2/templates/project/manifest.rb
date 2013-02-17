description "Google Buttons for Sass"

# Stylesheet importing Google Buttons
stylesheet 'styles.scss'

# Other Google Button assets
basedir = '../../vendor/assets'

# Images
%w(checkmark.png grey-disclosure-arrow-up-down.png).each do |file|
  image "#{basedir}/images/#{file}.png", :to => "#{file}.png"
end

# Javascripts
%w(bootstrap-popover google-select-dropdown.js google-select.js).each do |file|
  javascript "#{basedir}/javascripts/#{file}.js", :to => "#{file}.js"
end
