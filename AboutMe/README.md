# About Me

### Level 0

About Me is an opportunity for students to introduce themselves via their first app. Students will explore Storyboards, use a variety of UIKit elements, add images, and use Xcode to install the application on an iOS device.

Students who complete this project independently are able to:

* instantiate and place UIView objects on the screen
* edit properties on UIView objects
* create and use segues to navigate between views
* configure Xcode to install project on hardware device

## Guide

### AboutMe Scene

Build a view with at least 10 facts that you could use to introduce yourself. List goals, motivations, hobbies, or personal favorites. Include a photo.

1. Open the ViewController scene in Main.storyboard
2. Using UIViews, UILabels, UIButtons, UIImageViews, create a scene that you can use to introduce yourself
    * Use a UIScrollView if you cannot fit what you want to display
3. Use layout guides and basic Autolayout features to avoid overlapping or incorrectly placed views
4. Verify the scene appears as desired in two different Size Classes in Simulator
5. Install the project on an iOS device

### Detail Scenes

Build three detail scenes that give extra insight into the view's topic.

1. Create segues from UIButtons to present new scenes with details about a topic
    * use model presentations
    * ex. button titled 'Family' presents new view with photos of family
2. Create new subclasses of UIViewController to match with your detail scenes
    * ex. FamilyViewController.swift for Family detail scene
3. Add a 'Dismiss' button to each detail scene with an IBAction that dismisses the view
    * hint: Look at the [UIViewController][URL-Documentation-UIViewController] -> [Presenting View Controllers][URL-Documentation-UIViewController-Presenting View Controllers] documentation for a function that will dismiss the current scene

[URL-Documentation-UIViewController]: https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIViewController_Class/index.html
[URL-Documentation-UIViewController-Presenting View Controllers]: https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIViewController_Class/#//apple_ref/doc/uid/TP40006926-CH3-SW96

### Black Diamonds

* Create a Unit or UITest that verifies the user can reach and dismiss each detail scene

### Tests

* Requires at least 10 subviews to the view property of the ViewController class
* Requires at least one UILabel, UIButton, and UIImageView
* Requires at least three detail scenes

## Contributions

Please refer to CONTRIBUTING.md.

## License

Projects inspired by or derived from Apple's Swift Education community are licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/), by Yong Bakos.

## Copyright

All other work © DevMountain LLC, 2015. Unauthorized use and/or duplication of this material without express and written permission from DevMountain, LLC is strictly prohibited. Excerpts and links may be used, provided that full and clear credit is given to DevMountain with appropriate and specific direction to the original content.