//
//  ViewController.m
//  TeamcityTesting
//
//  Created by Glasses on 13/05/2017.
//  Copyright © 2017 GlassesD. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
    UIAlertController *alertController = [[UIAlertController alloc] init];
    UIAlertAction *alertAction =  [UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {

    }];
    [alertController addAction:alertAction];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    [self presentViewController:alertController animated:YES completion:^{
        
    }];
    });

  // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


@end
