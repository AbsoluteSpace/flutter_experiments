# Help

These are issues that took me awhile to solve and helpful bits of knowledge.

## Emulator:

You can't execute `flutter run --release` in an emulator.

## adb:

1. adb : The term 'adb' is not recognized as the name of a cmdlet, function, script file, or operable program:

    I'm using Android Studio to run my emulator. I found adb by going into Android Studio's SDK Manager, finding the install location for Android SDK Platform-Tools, and pasting this location into my PATH.
