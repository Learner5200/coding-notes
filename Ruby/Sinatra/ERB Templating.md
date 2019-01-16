# ERB

## Intro

* ERB stands for 'embedded ruby'
* Used to generate any kind of text from templates that combine plain text with ruby code
  * allows use of variables, flow control, etc.
* Used for web pages but also XML, RSS, others

## How to Use

* You can fill a .erb file with html etc normally
* Use tags below to write ruby code for flow control etc.
* To load an erb template in a ruby file, `require 'erb'` and use `erb :template_name`  when you need to load it
  * it will search for it in a 'views' directory
  * use `:subdir/template_name` if you have subdirectories


### Tags
* To execute (but not interpolate) ruby code, use these tags: `<%`, `%>`. This will evaluate the code in the tags.
  * These are called **scriptlets**
  * They're commonly used to embed loops, conditionals, assign variables, etc.
  * They CAN control the flow of the text/html etc, which is great
* To also interpolate the return value of this code into your html, use `<%=` as your first tag
* To write a comment, use `<%#`.
* Using the erb-helper package, the shortcuts are `CTRL+.` for scriptlets and `CTRL+SHIFT+.` for expressions, and `CTRL+SHIFT+3` for comments

## Conventions and requirements

* Rails requires template files to have the extension of the output type along with .erb: e.g. 'layout.html.erb'
