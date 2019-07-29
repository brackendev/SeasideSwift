SeasideSwift
============

**A cross-platform Swift code runner served by [Seaside](https://github.com/SeasideSt/Seaside) on [Pharo](http://pharo.org/).**

Similar implementations are used at [Repl.it](https://repl.it) and [OnlineSwiftPlayground.run](http://onlineswiftplayground.run).

* [Pharo 7.0](http://pharo.org/) reference platform.
* Requires macOS 10.14.5 (or later) ***or*** GNU/Linux (tested with Ubuntu 14.04, 64 bit).
    * SeasideSwift should run on Windows with little modifications. The biggest concern is getting Swift compilation running. See [Running Pharo in Windows Subsystem for Linux (WSL)](https://fuhrmanator.github.io/2019/02/27/Pharo-in-WSL.html) and [Swift for Windows](http://swiftforwindows.github.io).

## Installation

1. Install and setup the Swift tools for your environment:
    * **macOS 10.14.5:** Install the [Command Line Tools (macOS 10.14) for Xcode 10.2.1](https://developer.apple.com/download/more/?=command%20line%20tools) (or later).
    * **GNU/Linux:** [Install Swift](https://www.swift.org/getting-started/#installing-swift) from [swift.org](https://www.swift.org/).
2. Then:

    ```smalltalk
    Metacello new 
      repository: 'github://brackendev/SeasideSwift';
      baseline: 'SeasideSwift';
      onConflict: [ :ex | ex useIncoming ];
      onUpgrade: [ :ex | ex useIncoming ];
      onDowngrade: [ :ex | ex useLoaded ];
      ignoreImage;
      load.
    ```

## Usage

```smalltalk
"Start the service"
SeasideSwift shared start.
```

```smalltalk
WebBrowser openOn: 'http://localhost:8080/SeasideSwift/'.
```

```smalltalk
"Stop the service"
SeasideSwift shared stop.
```

## SaaS

Additionally, SeasideSwift includes "*Swift* as a Service" using [Teapot](https://github.com/zeroflag/Teapot).

For example:

```bash
curl -X "POST" "http://127.0.0.1:8081/swift" \
-H 'Content-Type: text/plain; charset=utf-8' \
-d "print(\"Hello, World\")"
```

Returns: `Hello, World!`

## Screenshots

#### macOS

![Screenshot](screenshot1.png)

#### GNU/Linux

![Screenshot](screenshot2.png)

## Acknowledgements

This project makes use of the following third-party libraries:

* [OSSubprocess](https://github.com/pharo-contributions/OSSubprocess)
* [Seaside](https://github.com/SeasideSt/Seaside)
* [Seaside-Bootstrap4](https://github.com/astares/Seaside-Bootstrap4)
* [Teapot](https://github.com/zeroflag/Teapot)

## Author

[brackendev](https://www.github.com/brackendev)

## License

SeasideSwift is released under the MIT license. See the LICENSE file for more info.
