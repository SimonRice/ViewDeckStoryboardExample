# ViewDeck Storyboard Example

This is a very, very simple example of showing how to integrate [ViewDeck](https://github.com/Inferis/ViewDeck) into an Storyboard project on XCode.  

It consists of a "Middle" view controller & a "Left" view controller, very similar to Facebook for iOS v4.x & v5.0.  With some modifications, it's possible to have a "Right" view controller as well.  The screenshots below show how it should look.

![Left hidden](/simonrice/ViewDeckStoryboardExample/raw/master/Doc/lefthidden.png) ![Left revealed](/simonrice/ViewDeckStoryboardExample/raw/master/Doc/leftrevealed.png)

## Compiling

ViewDeck itself isn't included in this project & therefore opening the XCode project here won't compile.

The easiest way by far of getting this project to compile is by using [CocoaPods](http://cocoapods.org).  Once you've got that up & running, all you need to do is type `pod install` on your terminal & open up the generated `ViewDeckStoryboardExample.xcworkspace` file, as instructed.

If for any reason you don't wish to use CocoaPods, create an ARC-enabled project with a copy of all of [ViewDeck's](https://github.com/Inferis/ViewDeck) `IIViewDeckController.{m,h}` & all of the non-project files from this repository.  You also need to include `QuartzCore.framework` (at Project-> Build Phases-> Link Binary With Libraries on XCode) in order for this method to work.

## Infrequently Asked Questions

### Why is the left view controller in a navigation stack?

It is a workaround to keep the status bar tinted on iOS 6.  The navigation bar has its alpha set to 0 so it isn't visible, & it is hidden on the view controller on the storyboard so it doesn't get in the way of laying out your view controller.  [See this ViewDeck issue for more information](https://github.com/Inferis/ViewDeck/issues/191).

### Why can't I the left view controller perform a segue from the middle view controller?

Because the left view controller is in a navigation stack, ViewDeck's `leftController` property is the `UINavigationController` container rather than the visible controller.

The workaround is easy enough:

```objc
[((UINavigationController*)self.viewDeckController.leftController).visibleViewController performSegueWithIdentifier:@"segue_id" sender:self];
```

Note that this doesn't apply if you perform a segue on the left view controller from itself.   [See this ViewDeck issue for more information](https://github.com/Inferis/ViewDeck/issues/238).

## Contributions

As everyone says, GitHub is about social coding - I didn't just choose to use it because of my love of git as a version control system.  Please do chip in & help make this even better.

## License

This example is provided under the terms of my very permissive Boozeware license (since I often prefer to have white wine over beer):

> As long as you retain this notice you can do whatever you want with this stuff. If we meet some day, and you think this stuff is worth it, you can buy me an alcoholic beverage in return.

See the `LICENSE` file or any class or header for the full details.

## Credits

Last but by no means least, I'd like to say an extra special thank you to Tom Adriaenssen not only for creating ViewDeck in the first place, but also for linking to this example from the ViewDeck GitHub readme!
