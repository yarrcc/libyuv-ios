xcodebuild -target 'yuv.xcodeproj' -scheme 'yuv' -configuration 'Release' -sdk iphoneos CONFIGURATION_BUILD_DIR='build/iphoneos' clean build ONLY_ACTIVE_ARCH=NO PLATFORM_NAME=iphoneos

xcodebuild -target 'yuv.xcodeproj' -scheme 'yuv' -configuration 'Release' -sdk iphonesimulator CONFIGURATION_BUILD_DIR='build/iphonesimulator' clean build ONLY_ACTIVE_ARCH=NO PLATFORM_NAME=iphonesimulator
                     
lipo -create build/iphoneos/libyuv.a build/iphonesimulator/libyuv.a -output build/libyuv.a
