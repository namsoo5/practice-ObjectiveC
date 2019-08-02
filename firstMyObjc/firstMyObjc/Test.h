//
//  Test.h
//  firstMyObjc
//
//  Created by 남수김 on 01/08/2019.
//  Copyright © 2019 ns. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Test : UIViewController{
    int ab;
}

- (void)helloObjc;
+ (void)helloObjc2;

@property int count;

@end

NS_ASSUME_NONNULL_END
