# Swift 3.0

## Creating a Lab

* As of 6/23/16 - [Quick](https://github.com/Quick/Quick) & [Nimble](https://github.com/Quick/Nimble) have not yet been updated to work with Xcode 8 and Swift 3.0.
* norio-nomura on github is making an attempt to make these frameworks work with Xcode 8 and Swift 3.0. [norio-numara - Quick](https://github.com/norio-nomura/Quick) - [norio-numara - Nimble](https://github.com/norio-nomura/Nimble).
* I had cloned down his Quick & Nimble repo's, but didn't know how to make them work within my project.
* Having messed around with both frameworks, I was able to make it work with Swift 3.0
* Included in this repo are **WORKING** Quick & Nimble frameworks which we can now include in our Xcode 8.0 projects and use to write tests for.


##Installing Quick & Nimble

* Create your project  

![CreateProject](http://i.imgur.com/V0gEgMQ.png?1)

* Copy the Quick & Nimble folders included in this repo inside of the folder that contains your newly made Xcode Project

![NewFiles](http://i.imgur.com/sU3lxEd.png?1)

* Head back to Xcode, we need to add both of these frameworks.

![AddFiles](http://i.imgur.com/6j1JPgJ.png?1)

* We want to "Add Files to "NewLab"...

* Located the .xcodeproj in the Quick directory in the directory that contains YOUR xcode project like so:

![quick](http://i.imgur.com/xMlOKEa.png?1)

* Click "Add"

* Perform the exact same steps but for the Nimble .xcodeproj like so:

![nimble](http://i.imgur.com/D8CvbPv.png?1)

* It should look like this when you're complete:

![complete](http://i.imgur.com/xZbRNQL.png?1)

* In the project navigator, select your project, then select YourProjectTests under TARGETS, then select Build Phases, then open up the menu "Link Binary With Libraries" in the center of the screen. Your screen should look like this:

![almostthere](http://i.imgur.com/7X4ta4C.png?1)

* Hit the + symbol underneat the Link Binary With Libraries (0 items) section, when doing that you will be presented with the following menu

![menu](http://i.imgur.com/dg5yI7y.png?1)

* Select the Nimble.framework & Quick.framework for iOS (like I did in the screenshot)

* It should wind up looking like this:

![likethis](http://i.imgur.com/TYu72ks.png?1)

* Within the TestGroup now, create a new Swift File and name it whatever you like - here, I named mine ViewControllerTest

![here](http://i.imgur.com/8TJ9rZD.png?1)

* It should now look like this, make sure the target membership of the newly made file is the test target and not your main project :

![testLove](http://i.imgur.com/eNMxNsd.png?1)

* If you attempt to import both Quick & Nimble at this point, it might not work. You need to have it compile. Hit command + u to run the tests (although you didn't write any tests yet.. after it does its jam here.. you will be able to import the frameworks)

* What your test file should now look like:

![done](http://i.imgur.com/PGns016.png?1)

* **YOU DID IT**

![yay](https://media.giphy.com/media/f31DK1KpGsyMU/giphy.gif)




<a href='https://learn.co/lessons/Swift3LabTemplate' data-visibility='hidden'>View this lesson on Learn.co</a>
