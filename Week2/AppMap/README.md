# AppMap
A very simple app that uses storyboards for an overview of the content
## Note
We’ll build more app store apps as we go. Hopefully eventually we’ll even do a game. For this project though, I just want you to build out the storyboard of an app. It should have a tabBar, a navigationController, and seques with and without information passed on.
## Expected Outcomes:
- A Github repo under your username called “AppMap”
- A tab bar app with 5 main view controllers
- All of the view controllers should have a label that shows which they are. “First View” etc.
- The first view controller should have a button that pushes a view called “more info” (hint, embed in a NavigationController)
- The second view controller should have a static table view with a username/password form
- The third view controller should have 3 (Eeny, Meeny, and Miney) buttons that all push the same ThirdOptionsViewController. In the middle of the ThirdOptionsViewController there should be a lable that displays which of the three buttons was pressed. Eeny, Meeny, or Miney.
- The fourth view controller should have a collection view of 6 new images of different sizes.
- Tapping on the picture of the lion, or the picture of the tiger, should push the other. I.e. If I tap on a lion, it pushes a tiger view controller. If I tap on a tiger it pushes a lion view controller. And so forth.