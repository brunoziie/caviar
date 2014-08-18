<p align="center">
  <a href="https://weedoit.github.io/caviar">
    <img src="http://lab.weedo.it/images/caviar-logo.png">
  </a>
  <br>
  <span><strong>keep it simple, elegant and fast!</strong></span>
  <br><br>
</p>

***

# Installation

1. Download a  [stable version](https://github.com/weedoit/caviar/archive/v0.0.33.zip) or Clone this repo. ```git clone git@github.com:weedoit/caviar.git``` 
2. Make sure that all dependencies were installed. ```npm install```
3. Install all bower dependencies. ```bower install```
4. That's it. Now we can start.

# Getting started

## Introduction
Caviar is a little framework created to develop [Cordova](http://cordova.apache.org/) Apps thinking in to extract maximum performance possible on mobile devices. 
It's started as a fork of [FastGap](https://github.com/FastGap/fastgap) project, but quickly figured out it needs go a bit more far, so we resolved rewrite it from zero using all that we was learned with FastGap until then.

Caviar not came to define the way like you have to create your user interfaces. This isn't our mission. We only want to provide a MVC structure, templating engine, databinding and controls to data and navigation flow. 

We take care of the mess and you take care of UI design.

## Concepts
Before continue reading this, is important you take note from some concepts used in Caviar. You'll need it to understand how it works.

### Intents
This may be familiar to you if you program using the Android SDK, but here Intents are a little bit different of Android Intents. 

Caviar hasn't a route system, instead of it we use Intents. Intents represent a intention to go to a screen. They also are used to save history of navigation and to recover states of your controller instance.

## Structure
This is the basic structure of project:

```
├── build
├── docs
├── src
│   ├── app
│   │   ├── controllers
│   │   ├── models
│   │   └── views
│   ├── assets
│   │   ├── css
│   │   └── images
│   └── core
└── vendor
    ├── bower
    └── nombower
```
| Path            | Description                                                           |
| -------------   | :---------------------------------------------------------------------|
| build/          | Where Grunt will generate the build.                                  |
| docs/           | Documentation directory.                                              |
| src/app         | MVC files.                                                            |
| src/assets      | Imagens and styles files directory.                                   |
| src/core        | Core scripts of Caviar.                                               |
| vendor/bower    | Vendor scripts available on Bower.                                    |
| vendor/nombower | Vendor scripts not registered on Bower.                               |


## Lifecycles
When you start the application it follows the following steps until the main display screen

1. Start Intent
2. Create a new controller instance
3. Load controller resources
4. Invoke Controller::initialize() callback
5. Run transition in

Its will repeat when you are changing of screen on application but other steps are added on flow.

1. Start Intent
2. Create a new controller instance
3. Load controller resources
4. Invoke Controller::initialize() callback
5. Run transition out on previous controller
6. Run transition in

For optimize allocate resources, when you back from a screen to other all resources created are destroyed. When back a screen we have the following steps:

1. Run transition out on current controller
2. Invoke Controller::destroy() callback
3. Unload controller resources
5. Invoke Controller::onResume() callback 
4. Run transition in previous controller

Its may be different if you are backing a screen passing data to previous. You'll get it:

1. Run transition out on current controller
2. Invoke Controller::destroy() callback
3. Unload controller resources
4. Invoke Controller::onResume() callback 
5. Invoke Controller::onResult() callback passing data 
6. Run transition in previous controller

> An important note is that, if you open main controller, all resources allocated previously will be  destroyed. We understand that if user is going to main screen means they will not have intention to back to previous screen. So we can destroy all for gain in performance.

## Controllers

### Callbacks

### Helpers

### Creating controllers

### Navigation

### Transiting data

## Views

### Templating

### Events

## Examples
### Creating a todo app