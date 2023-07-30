rm -rf build

xcodebuild -target 'yuv.xcodeproj' -scheme 'yuv' -configuration 'Release' -sdk iphoneos CONFIGURATION_BUILD_DIR='build/iphoneos' clean build ONLY_ACTIVE_ARCH=NO PLATFORM_NAME=iphoneos

xcodebuild -target 'yuv.xcodeproj' -scheme 'yuv' -configuration 'Release' -sdk iphonesimulator CONFIGURATION_BUILD_DIR='build/iphonesimulator' clean build ONLY_ACTIVE_ARCH=NO PLATFORM_NAME=iphonesimulator
                     
xcodebuild -create-xcframework -library build/iphoneos/libyuv.a -headers include -library build/iphonesimulator/libyuv.a -headers include -output build/libyuv.xcframework
