//
//  ViewController.m
//  RLDemo-iOS
//
//  Created by YourtionGuo on 09/01/2017.
//  Copyright © 2017 Yourtion. All rights reserved.
//

#import "ViewController.h"
#import <RemoteLogger/RemoteLogger.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [RLServer startServerWithPort:6666];
    NSLog(@"%@", [RLServer getDeviceIp]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
