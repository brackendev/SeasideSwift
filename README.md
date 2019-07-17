SeasideSwift
============

**A cross-platform Swift code runner served by [Seaside](https://github.com/SeasideSt/Seaside) on [Pharo](http://pharo.org/).**

* [Pharo 7.0](http://pharo.org/) reference platform.
* Requires macOS 10.14.5 (or later) ***or*** GNU/Linux (tested with Ubuntu 14.04, 64 bit).
    * SeasideSwift should run on Windows with little modifications. See [Running Pharo in Windows Subsystem for Linux (WSL)](https://fuhrmanator.github.io/2019/02/27/Pharo-in-WSL.html) and [Swift for Windows](http://swiftforwindows.github.io).

## Installation

1. Install and setup the Swift tools for your environment:
    * **macOS 10.14.5:** Install the [Command Line Tools (macOS 10.14) for Xcode 10.2.1](https://developer.apple.com/download/more/?=command%20line%20tools) (or later).
    * **GNU/Linux:** [Install Swift](https://www.swift.org/getting-started/#installing-swift) from [swift.org](https://www.swift.org/).
2. Install and setup [Pharo](http://pharo.org/).
3. In a Pharo playground, evaluate:

    ```smalltalk
    Metacello new 
      repository: 'github://brackendev/SeasideSwift';
      baseline: 'SeasideSwift';
      load.
    ```

## Usage


In a Pharo playground, evaluate:

```smalltalk
"Start the service"
SeasideSwift start.
```

```smalltalk
WebBrowser openOn: 'http://localhost:8080/SeasideSwift/'.
```

```smalltalk
"Stop the service"
SeasideSwift stop.
```

## Screenshots

#### macOS

![Screenshot](screenshot1.png)

#### GNU/Linux

![Screenshot](screenshot2.png)

## Acknowledgements

* [Mariano Martinez Peck](https://github.com/marianopeck) and [contributors](https://github.com/pharo-contributions/OSSubprocess/graphs/contributors) for [OSSubprocess](https://github.com/pharo-contributions/OSSubprocess).
* [Astares](https://github.com/astares) for [Seaside-Bootstrap4](https://github.com/astares/Seaside-Bootstrap4), a Bootstrap 4 wrapper for Seaside for Pharo 7.
* The [Seaside team](https://github.com/orgs/SeasideSt/people) and [contributors](https://github.com/SeasideSt/Seaside/graphs/contributors) for [Seaside](https://github.com/SeasideSt/Seaside), the framework to develop sophisticated web applications that let you build highly interactive web applications quickly, reusably and maintainably.
* The [Pharo team](https://github.com/orgs/pharo-project/people) and [contributors](https://github.com/pharo-project/pharo/graphs/contributors) for [Pharo](http://pharo.org/), the pure object-oriented programming language and a powerful environment, focused on simplicity and immediate feedback.

## Author

[brackendev](https://www.github.com/brackendev)

## License

SeasideSwift is released under the MIT license. See the LICENSE file for more info.
