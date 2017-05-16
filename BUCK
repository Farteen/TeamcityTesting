apple_resource(
  name = 'BuckDemoAppResources',
  files = glob(['TeamcityTesting/*.png'],['TeamcityTesting/Base.lproj/*.storyboard']),
  dirs = [],
)

apple_bundle(
  name = 'BuckDemoApp',
  binary = ':BuckDemoAppBinary',
  extension = 'app',
  info_plist = 'TeamcityTesting/Info.plist',
  tests = [':BuckDemoAppTest'],
)

apple_binary(
  name = 'BuckDemoAppBinary',
  deps = [':BuckDemoAppResources'],
  preprocessor_flags = ['-fobjc-arc', '-Wno-objc-designated-initializers'],
  headers = glob([
    'TeamcityTesting/*.h',
  ]),
  srcs = glob([
    'TeamcityTesting/*.m',
  ]),
  frameworks = [
    '$SDKROOT/System/Library/Frameworks/UIKit.framework',
    '$SDKROOT/System/Library/Frameworks/Foundation.framework',
  ],
)

apple_package(
  name = 'BuckDemoAppPackage',
  bundle = ':BuckDemoApp',
)

apple_test(
  name = 'BuckDemoAppTest',
  test_host_app = ':BuckDemoApp',
  srcs = glob([
    'TeamcityTestingTests/*.m',
  ]),
  info_plist = 'TeamcityTestingTests/Info.plist',
  frameworks = [
    '$SDKROOT/System/Library/Frameworks/Foundation.framework',
    '$PLATFORM_DIR/Developer/Library/Frameworks/XCTest.framework',
    '$SDKROOT/System/Library/Frameworks/UIKit.framework',
  ],
)
