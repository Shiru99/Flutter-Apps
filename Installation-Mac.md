# Installation of flutter on [Mac](https://docs.flutter.dev/get-started/install/macos)

1. System requirements (Apple silicon mac)

        $ sudo softwareupdate --install-rosetta --agree-to-license

    
2. Get the [Flutter SDK](https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_arm64_3.7.12-stable.zip)


3. Extract the ZIP file

        $ cd ~
        $ unzip ~/Downloads/flutter_macos_arm64_3.7.12-stable.zip


4. Add the flutter tool to your path 

    * This will add path for current terminal session

            $ export PATH="$PATH:`pwd`/flutter/bin"


    * This will add path permanently

            $ echo $SHELL
            $ echo 'export PATH="$PATH:`pwd`/flutter/bin"' >> ~/.zshrc   (depending on shell)
            $ echo $PATH
            $ which flutter


5. Verify Installation

        $ flutter doctor


---


# Installation of XCode on Max

1. Install XCode from [web-download](https://developer.apple.com/xcode/) or [Mac App Store](https://itunes.apple.com/us/app/xcode/id497799835)


2. Configure the Xcode command-line tools

        $ sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
        $ sudo xcodebuild -runFirstLaunch


3. Install CocoaPods 

        $ sudo gem install cocoapods
        $ echo 'export PATH="$PATH:/usr/local/bin"' >> ~/.zshrc 


3. Set up the iOS simulator
    
        $ open -a Simulator

---


# Installation Of Android Studio on Mac

1. Download & Install [Android Studio](https://developer.android.com/studio)

2. Install Android Studio command-line tools

3. Configure the Android Studio command-line tools


        $ echo 'export ANDROID_HOME=/Users/$(whoami)/Library/Android/sdk' >> ~/.zshrc 
        $ echo 'export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"' >> ~/.zshrc 
        $ source ~/.zshrc


4. accept the SDK licenses.

        $ flutter doctor --android-licenses


5. Make sure that you have a version of Java 11 installed and that your JAVA_HOME environment variable is set to the JDK’s folder.


6. Set up your Android device

    * Enable Developer options and USB debugging on your device

    * Set up your Android device to allow installation of non-market apps


7. Set up the Android emulator


----

