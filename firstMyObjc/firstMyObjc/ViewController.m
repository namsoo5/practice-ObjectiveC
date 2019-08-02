//
//  ViewController.m
//  firstMyObjc
//
//  Created by 남수김 on 01/08/2019.
//  Copyright © 2019 ns. All rights reserved.
//

#import "ViewController.h"
#import "Root.h"

//기본적으로 파일을 만들면 헤더파일과 구현부 파일에 @interface가 생겨 근데 사실 인터페이스는 외부에서 접근하는 거기 때문에 헤더파일에서 정의하구 구현 파일에선 지우는게 좋
// 여기서는 implementation에 대한 내용을 작성하는 부분이야
@implementation ViewController

// 이건 viewDidLoad 똑같지? 스위프트랑 근데 스위프트는 override를 기본으로 쓰는거로 알지만 옵젝씨는 그냥 부모 뷰의 함수이름을 쓰면 그게 오버라이딩이야. 그리고 부모 뷰의 함수를 호출하려면 super를 쓰면 되겠지?
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self sayHello]; //이런식으로 호출해 앞에 self인 이유는 알지?
    // Do any additional setup after loading the view.
    
    //클래스 메서드기 때문에 self가 아니라 뭘써야 할까? 정답~
    // 너가 외부에서 이 함수들을 쓰고싶으면 헤더 파일에 정의하면
    [ViewController sayBye];
    
    [self printWithName:@"soeun" :@"suwon"]; //이런식으로 함수를 부를 때도 :를 이용해서 구분해 ㅇㅋ?
    //근데 저거 @이건 어따쓰는거 옵젝씨에서 스트링은 NSString밖에 없는데 이 NSString을 쓸 땐 무조건 @"" 이렇게 써야대 숫자는 NSInteger 뭐 알겠지만 보여줄게
    //이런식으로 내가 String이라고 쓰면 얘의 자료형은 알아도 얘가 어떤 용도로 쓰이는진 모르겠지? 외부 매개변수명이 없으니 따라서 보통 함수의 이름 마지막에 이런식으로 작성을 해줘
    //이렇게 작성하면 With다음에 오는게 Name이니까 name에 관한 매개변수를 넘기면 되겠구나 이런식으로 쓸 수
    //그냥 관례처럼 네이밍하는거지?
    //웅 근데 저렇게 안쓰면 나중에 엄청 헷갈려 2개면 어케해?? 지금 보여줄
    
    //여기서 보이지? With하구 뒤에 쓰는
    NSString *str = [[NSString alloc] init];
    NSInteger a;
    
    NSArray *arr = [[NSArray alloc] init];
    // 일반적으로 int 선언할 때 * 안쓰지? dd그거처럼 NSString이 *을 쓰는 이유는 쟤는 클래스야 NSInteger는 클래스가 아니겠지 그럼? !!
    // 따라서 NSString을 쓸 땐 무조건 객체를 생성하고 써야해 NSInteger는 상관없지
    // 이거처럼 *이 들어가면 옵젝씨에서 타입은 클래스 타입이기 때문에 저렇게 객체 생성을 해줘야 메모리에 할당되고 쓸 수 있어 근데 사실 NSString은 어디서나 쓰이기 때문에 저 과정을 생략해도 돼
    //근데 NSString 외에 NS로 시작하는 것들은 99% alloc init을 해줘야 쓸 수 있어
    // 이제 객체 생성하는 거로 가보자
    
    //여기서 Root 클래스에 접근한다고 하면
    Root *vc = [[Root alloc] init];
    [vc getm_Name];
    
    [vc setm_Name:<#(nonnull NSString *)#>];
    
    //이런식으로 접근하지 말라고 만들어 둔게 프로퍼티야 왜냐면 프로퍼티는 컴파일 할 때 자동으로 getter, setter를 생성해주거든
    //이렇게 . 문법을 사용해서 접근할 수도 있
//    vc.nCnt =
//    = vc.nCnt
    //자동으로 생성된 메서드를 사용할 수도 있어
    [vc setNCnt:<#(int)#>];
    [vc nCnt];
    
    //오키? 와우ㅏ 아근데 그 옵셔널?? null이런거관리어케해 옵셔널은 스위프트에서 부터 생긴 문법입니당 nonnull저거ㅆ 필요없어 무시해 그냥 뒤에 엔에스 스트링 형식이 오는거고 널값이면 안된다 이런거지 null로 생성은가능?? 빈값변수 변수에 ㅜ널 넣는게 되냐고? 그냥 변수먄 초기화하면 빈값되자느 그런거되지? ㅇㅇ 바바 
}

//너가 만약에 여기다가 함수를 작성하잖아? 이렇게 작성한 함수를 다른 함수에서 부르거나 할 땐 [] 이 문법을 쓰는거
- (void)sayHello {
    NSLog(@"남수 바보 ");
}

//함수 앞에 +,- 가 의미하는 것은 클래스 메서드와 인스턴스 메서드의 차이야 +(클래스 메서드), -(인스턴스 메서드)

+ (void)sayBye {
    NSLog(@"Bye");
}

//h파일에선그럼 선언만 해주고 구현 ㄴㄴ?ㄱㅇㅇ 구현은 아 임플리먼테이션에서 하는ㄴ거ㅇㅋ야
//함수에서 매개변수를 받을 때 기본적으로 : 이걸 기점으로 구분해 만약 :가 한개 있으면 매개변수가 1개인거고 2개있으면 2개인거야
//그리고 내부매개변수명, 외부매개변수명 알지? 옵젝씨에서 기본으로 가장처음에 오는 매개변수명은 외부매개변수명이 없어 그래서 기본적으로 함수의 이름에 With를 써주고 그 다음에 어떤 인자값이 와줘야 하는지 써줘야해 밑에만 봐도 ㅁ밑에 함수를 실행하자나?게
//처음 매개변수만 명이 없는거지 두번째부턴 쓸수 있어

- (void)printWithName:(NSString *)str :(NSString *)address{
    NSLog(@"%@, %@", str, address);
}

//여기서 strAddress 이게 외부 매개변수명이고 address이게 내부 매개변수명이야 두번쨰 매개변수부턴 내부매개변수명을 쓸 수 있어 물론 생략도 가능 이렇게 써도 가능
//근데 중요한건 내부매개변수명은 생략해도 저 : 이거는 생략하면 안돼 저게 구분자거든 매개변수가 몇개인지


@end


// 옵젝씨는 스위프트와 다르게 헤더파일과 구현부 파일이 있어 옵젝씨는 씨언어를 거의 기반하기 때문에 씨언어랑 비슷하다 생각하면 돼
// 옵젝씨에서는 함수를 부를 때 [] 이 문법을 사용해 . 이거로 접근 안대
