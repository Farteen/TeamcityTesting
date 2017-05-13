# Copyright 2015-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

apple_resource(
  name = 'BuckDemoAppResources',
  files = glob(['*.png']),
  dirs = [],
)

apple_bundle(
  name = 'BuckDemoApp',
  binary = ':BuckDemoAppBinary',
  extension = 'app',
  info_plist = 'Info.plist',
)

apple_binary(
  name = 'BuckDemoAppBinary',
  deps = [':BuckDemoAppResources', '//common:hello'],
  preprocessor_flags = ['-fobjc-arc', '-Wno-objc-designated-initializers'],
  headers = glob([
    '*.h',
  ]),
  srcs = glob([
    '*.m',
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
