# Jokes-Juke
Jokes Juke (Objective-C)

This is a simple application which fetches the Jokes from icndb and display on the screen. I have tried to cover the following in this project. This project will help in simplyfing the use and integration of RestKit and the object mapping. The implementation of MVVM and last but not the least, the dependancy managment of the framework through coca pods.

To all the cool people out there, Try this and have fun with some hilarious jokes. Any contribution or feedback is welcome and highly appreciated.

# Controls
 1. TableViewController
 2. TableViewCell (Custom Joke Cell)
 3. UIRefreshControl (Pull to refresh the Jokes on the screen)
 
# FrameWorks
 1. RestKit

# Dependancy Management
 1. Coca Pods

# Design Pattern
 1. MVVM
 2. Delagation for communication between Service & UI
 3. Facade
 
# JSON (Sample)
{
  "type": "success",
  "value": [
    {
      "id": 555,
      "joke": "Chuck Norris doesn't have pubic hairs because hair doesn't grow on balls of steal.",
      "categories": [
        "explicit"
      ]
    },
    {
      "id": 517,
      "joke": "Chuck Norris solved the halting problem.",
      "categories": [
        "nerdy"
      ]
    }
  ]
}

# Improvements/Updates
 1. Updating UI with autolayouts to work on different device size and orientation change.
 2. Implementing the details screen for every Joke.
 3. Share a joke with friends via Facebook/Linkedin/Whatsapp/Twitter
