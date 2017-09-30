# Instructions for CordovaApp
These instructions pertain to Mac OSX users only. 

### Intro
* This is an SPA 
* SASS is the CSS pre-processor

### Setup requirements
* See README.md

### Setting up the project
1. Clone the repo `git clone https://github.com/arunabhdas/cordova-app`
2. Run `npm install`
3. Run `bower install`
4. Run `grunt build`
5. Add the relevant cordova platforms: 
    * `cordova platform add ios && cordova platform add android`

### Testing the app on a device

1. Run `cordova run <platform>` eg `cordova run ios` which will prepare, build and run the project in the given platform. If you have a real device connected the emulators will attempt to run the app on that device. Otherwise they'll just run in the soft emulators.

### Debugging in desktop browser

1. Run `cordova serve`
2. Open your browser of choice and navigate to http://localhost:0000

### Deploying the app

* For Android
  1. run `grunt build`
  2. run `cordova build android`
  2. run `releaseAndroid` (defined in the bash_profile)
    
* For iOS
  1. run `grunt build`
  2. run `cordova build ios`
  2. See docs at [xcode docs](https://developer.apple.com/library/ios/documentation/IDEs/Conceptual/AppDistributionGuide/ConfiguringYourApp/ConfiguringYourApp.html)

#### Common problems

