### SCRIPTS ###

# Build APK/AAB
flutter build apk --split-per-abi
flutter build appbundle --release --obfuscate --split-debug-info=./ehe

# Run For Freezed
flutter packages pub run build_runner watch
flutter packages pub run build_runner build --delete-conflicting-outputs

# Create Launcher Icons
flutter pub run flutter_launcher_icons:main

# Create Native Splash
flutter pub run flutter_native_splash:create

# Create a Keystore
keytool -genkey -v -keystore android/app/key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key

# Run Multiple Devices Simultaneously
flutter run -d all

# Upgrade Packages
flutter pub outdated
flutter pub upgrade

# Clean Cache
flutter pub cache clean 