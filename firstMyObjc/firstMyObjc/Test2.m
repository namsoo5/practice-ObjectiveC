//
//  Test2.m
//  firstMyObjc
//
//  Created by 남수김 on 01/08/2019.
//  Copyright © 2019 ns. All rights reserved.
//

#import "Test2.h"
#import "Test.h"

@implementation Test2 {
    NSString *str;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    str = @"abc";
    
    Test *vc = [[Test alloc] init];
    [vc helloObjc];
    
    NSInteger c = vc.count;
    vc.count = 3;
    
    [vc setCount: 3];
    [vc count];
    
    
}


@end
