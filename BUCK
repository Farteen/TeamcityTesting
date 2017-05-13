ios_application(
    name = "TeamcityTesting",
    binary = "TeamcityTestingBinary",
    infoplist = "TeamcityTesting/Info.plist",
    visibility = ["//visibility:public"],
)

objc_binary(
    name = "TeamcityTestingBinary",
    srcs = [
        
    ],
    deps = [
        ":UrlGetClasses",
    ],
)

objc_library(
    name = "UrlGetClasses",
    srcs = [
        "UrlGet/AppDelegate.m",
        "UrlGet/UrlGetViewController.m",
    ],
    hdrs = glob(["UrlGet/*.h"]),
    xibs = ["UrlGet/UrlGetViewController.xib"],
)
