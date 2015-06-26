hello.swift.konashi
===================


Article
-------

- http://konashi.ux-xu.com/getting_started/


Other sites
-----------

- http://konashi.ux-xu.com/appledoc/index.html

- https://github.com/naohta/konashi-ios-sdk
- http://konashi.ux-xu.com/documents/#specs-supportDevice
- https://store.macnica.co.jp/library/96045


Bridging Header File with objc 
------------------------------

- A good article

    - https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/BuildingCocoaApps/MixandMatch.html

        - Add `Header.h`
        - Write like `#import "Konashi.h"` things in `Header.h`
        - Project root -> Targets -> Build Settings -> All
            -> Swift Compiler - Code Generation -> Objective-C Bridging Header -> WRITE `Header.h` THERE!

- An Apple's article

    - https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/BuildingCocoaApps/MixandMatch.html
