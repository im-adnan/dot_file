

# Command Used in This Video for Flutter installation on Ubuntu WSL.

### Install Flutter on WSL Windows 11 

> Resource: https://flutter.dev/docs/get-started/install/linux

```
mkdir ~/development cd ~/development
```

> git clone https://github.com/flutter/flutter.git -b stable

	tar xf ~/development/flutter_linux_2.2.3-stable.tar.xz 
	export PATH="$PATH:`pwd`/flutter/bin"
### Optionally, pre-download development binaries: 
	flutter precache 
### My first app 
	flutter create myapp2 
	cd flutter 
	cd myapp2 
	ls flutter emulators 
	flutter emulators --launch 
	flutter run

# Install Android SDK on Windows Bash (WSL)

	sudo apt-get install unzip 
	wget https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbUd3aDcweERoU3V6VHJXd0tYMl9iYmVuYUJDd3xBQ3Jtc0trTGJpZFFRLWZnXzd1NXlFN2NGTlAtN1FqcVljT053NVdOZFBrNFd5aWpfTVJEcnVlQmZqU1BNZnhNRVU3aGJBTGdOZ2JIZ052bnliSEFnXzJ0MFg4YzdIeXdBLWdzNHZsNjQxd2tNNEVlcW1QbkR6TQ&q=https%3A%2F%2Fdl.google.com%2Fandroid%2Frepository%2Fsdk-tools-linux-4333796.zip
	
	unzip sdk-tools-linux-4333796.zip -d Android 
	
	rm sdk-tools-linux-4333796.zip 
	
	sudo apt-get install -y lib32z1 openjdk-8-jdk
	
	export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 
	
	export PATH=$PATH:$JAVA_HOME/bin 
	
	printf "\n\nexport JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64\nexport PATH=\$PATH:\$JAVA_HOME/bin" "two greater than sign" ~/.bashrc 
	
	cd Android/tools/bin 
	
	./sdkmanager "platform-tools" "platforms;android-26" "build-tools;26.0.3" 
	
	./sdkmanager "system-images;android-27;google_apis_playstore;x86" 
	
	export ANDROID_HOME=/home/jugheadxix/android
	
	export PATH=$PATH:$ANDROID_HOME/tools 
	
	export PATH=$PATH:$ANDROID_HOME/platform-tools 
	
	printf "\n\nexport ANDROID_HOME=/home/username/Android\nexport PATH=\$PATH:\$ANDROID_HOME/tools\nexport PATH=\$PATH:\$ANDROID_HOME/platform-tools" "two greater than sign" ~/.zshrc 
	android update sdk --no-ui 
	
	sudo apt-get install gradle 
	
	gradle -v 
	
	adb start-server 
	
	sudo chown sonooskb /dev/kvm

