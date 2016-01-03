#!/usr/bin/env xcrun swift -sdk /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk

import Quartz

let filterNames = CIFilter.filterNamesInCategory(kCICategoryBuiltIn) as [String]

filterNames
    .forEach { name in
        print("# \(name)")
        let filter = CIFilter(name: name)

        print("### Input Keys")
        filter?.inputKeys.forEach { attr in
            print("* \(attr)")
        }

        print("Output Keys")
        filter?.outputKeys.forEach { attr in
            print("* \(attr)")
        }
    }
