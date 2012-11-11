# ViewDeckStoryboardExample

This is a very, very simple example of showing how to integrate [ViewDeck](https://github.com/Inferis/ViewDeck) into an Storyboard project on XCode.  

It consists of a "Middle" view controller & a "Left" view controller, very similar to Facebook for iOS v4.x & v5.0.  With some modifications, it's possible to have a "Right" view controller as well.  The screenshots below show how it should look.

![Left hidden](/simonrice/ViewDeckStoryboardExample/raw/master/Doc/lefthidden.png) ![Left revealed](/simonrice/ViewDeckStoryboardExample/raw/master/Doc/leftrevealed.png)

## Compiling

ViewDeck itself isn't included in this project & therefore opening the XCode project here won't compile.

The easiest way by far of getting this project to compile is by using [CocoaPods](http://cocoapods.org).  Once you've got that up & running, all you need to do is type `pod install` on your terminal & open up the generated `ViewDeckStoryboardExample.xcworkspace` file, as instructed.

If for any reason you don't wish to use CocoaPods, create an ARC-enabled project with a copy of all of [ViewDeck's](https://github.com/Inferis/ViewDeck) `IIViewDeckController.{m,h}` & all of the non-project files from this repository.  You also need to include `QuartzCore.framework` (at Project-> Build Phases-> Link Binary With Libaries on XCode) in order for this method tp work.

## Contributions

As everyone says, GitHub is about social coding - I didn't just choose to use it because of my love of git as a version control system.  Please do chip in & help make this even better.

## Credits

Last but by no means least, I'd like to say an extra special thank you to Tom Adriaenssen not only for creating ViewDeck in the first place, but also for linking to this example from the ViewDeck GitHub readme!
