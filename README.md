# CoreImage Filters
This is just a quick script I put together to pump out all of the available filters available in CoreImage along with the keys that are used for their parameters.

Just wanna view? Open `output.md` in github

# Running The Script
```
./generate.swift > output.md
```

# Troubleshooting
If the following looks familiar, you may just need to change the shabang at the top of `generate.swift`
```
warning: no such SDK
warning: no such sysroot directory
```
To figure out what to put there:
```
xcrun --show-sdk-path --sdk macosx
```
Replace this path in the shabang
```
/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk
```
with whatever path the `xcrun` command spat out
