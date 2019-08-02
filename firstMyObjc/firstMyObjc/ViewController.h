//
//  ViewController.h
//  firstMyObjc
//
//  Created by 남수김 on 01/08/2019.
//  Copyright © 2019 ns. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


//이렇게 선언을 해주면면 외부에서 이 함수를 쓸 수 있
- (void)sayHello;
+ (void)sayBye;

@end

// 이게 헤더 파일이구 대충 볼 줄은 알지?
// 이거 어따쓰는거? 왜이케만듬?
// c언어랑 똑같다 했잖아 너가 다른 파일에서 이 클래스를 쓰고 싶으면 이 헤더파일을 임포트하면 되는거고 너가 구현부 파일에서 설정한 함수를 외부에서 쓰고싶으면 여기다 함수 원형을 선언하면 돼 
