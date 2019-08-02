//
//  Test.m
//  firstMyObjc
//
//  Created by 남수김 on 01/08/2019.
//  Copyright © 2019 ns. All rights reserved.
//

#import "Test.h"
#import "ViewController.h"
@implementation Test

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self helloObjc];
    [Test helloObjc2];
    
    [self helloWithName:@"a"];
    [self helloWithName2:@"a" name2:@"b"];
    [self helloWithName3:@"a" :@"b"];
    

}

- (void)helloObjc {
    NSLog(@"hello");
}

+ (void)helloObjc2 {
    NSLog(@"hello");
}

- (void)helloWithName: (NSString *)str {
    NSLog(@"%@씨 안녕하세요", str);
}

- (void)helloWithName2: (NSString *)str1 name2:(NSString *) str2 {
    NSLog(@"%@와 %@ 안녕", str1, str2);
}

- (void)helloWithName3: (NSString *)str1 :(NSString *) str2 {
    NSLog(@"%@와 %@ 안녕", str1, str2);
}

@end
