//
//  Root.h
//  firstMyObjc
//
//  Created by 남수김 on 01/08/2019.
//  Copyright © 2019 ns. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Root : UIViewController {
    @public int a;
}

@property int nCnt;

- (NSString *)getm_Name;
- (void)setm_Name:(NSString *)name;
@end

NS_ASSUME_NONNULL_END
