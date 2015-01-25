# custom-event-backbone
This project helps clarify the difference between "listenTo" and "on" in Backbone.

Feel free to play around the events triggered at src/view/AppView.coffee


# How to run it
You will need to install coffeescript to run this project:

npm install -g coffee-script

The CoffeeScript source files are under the src/ directory. They must be compiled to javascript files. Run the command below, it will continously watch the change of coffeescript files and compile the changes. 

coffee --output [output_folder] --map --watch --compile [source_folder]

ex: coffee --output compiled --map --watch --compile ./

Article about this project: http://chiahsin.azurewebsites.net/backbone-custom-event/
