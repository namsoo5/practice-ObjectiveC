//
//  Root.m
//  firstMyObjc
//
//  Created by 남수김 on 01/08/2019.
//  Copyright © 2019 ns. All rights reserved.
//

#import "Root.h"
#import "ViewController.h"
@implementation Root {
    NSString *m_name;       //이 m_name을 외부 객체에서 접근하고 싶다면
        //여기선 전역변수를 선언하는데 초기화는 할 수 없어 무조건 선언만 해 너가 만약 임의로 초기화를 해주고 싶다면 밑에서 해주는거고 만약 안하면 자동으로 널 값이 들어가
    //여기서 초기화못해??? ㅇ ㅇ 이러
}
//여기서 너가 ViewController 객체를 선언해봐
//해킹하냐 ?zzz 자바를 생각해바 자바에서 객체생성 어떻게해
//남수야 에러가 뜨는 이유는 너가 지금 말도안되는 곳에다 선언을 하고 있단다
// 아니 이 구현부 파일에다 하라고 ㅋㅋㅋㅋㅋㅋㅋ

//init은 너가 알아서 초기화 할 수 있어 이런 편의 초기화 메서드를 convenience method 라고 해

//얘는 너가 따로 선언하지 않으면 (오버라이딩 하지 않으면) NSObject에 있는 이 밑에거가 호출돼 근데 너가 여기서 작업을 하고 싶으면 오버라이딩 하면 돼 ㅇㅋㅇㅋ?
- (instancetype)initWithName:(NSString *)name {
    self = [super init];  // <-먼문법이여이건 저 문법에서 현재 리시버가 super이거잖아 ㅇㅇ 부모 클래스의 이닛을 호출한다 이거지 부모 클래스의 이닛을 호출하고 그 결과값을 셀프 나 자신으로 받겠다 이거야 굳이 너가 건들필요 없는 함수야 왜냐면 ㅑinitㄱ응 그거 치면 저게 알아서 만들어지거든 넌 그냥 저 if문 안에다가 너가 원하는 작업만 해주면 되는거야 ㅇㅎㅇㅎ
    //나중에저 if 말고 else면?그러쿤그럴리업나 ㅎㅎ 바바 이프(셀프) 이게 먼말이야 뭘반환받는데 근데그개 뭔값이잇으니까 실행되겟네무조건 그치 만약 에러나서 셀프에 닐이 들어오면 초기화를 실패하겠지
    //여기는 너가 모르는 프레임워크가 해주는 기능이기 때문에 굳이 넘 깊게 알지 않아두 대 ㅇㅋㅇㅋ 대충 다 설명 했꼬 중요한거 하나만 설명하고 갈게
    if (self) {
        m_name = name;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    
    //마지막 정리하면
    
    //클래스 메서드의 호출
    
    [ViewController sayBye];
    
    //인스턴스 메서드의 호출
    
    ViewController *vc = [[ViewController alloc] init];
    [vc sayHello];
    
    //맞았어 그럼 아까와 이어서 생각해보자 [ViewController alloc]  이놈을 봐봐 ViewContoller의 객체를 생성하지 않았는데 alloc이란 함수를 호출해 어떻게 된걸까
    //아까 너가 했었어 클래스 메서드를 선언할 때 어케한댔지? 앞에 클래스 이름을 쓰고 그 뒤에 함수명을 썼잖아 그거랑 같은거야앞에 클래스명이 들어갔지? ㅇㅇ그렇기 때문에 alloc는 클래스 메서드인거야 근데 너가 선언한 적 없다고? 저건 NSObject에 선언되어있는 거야 기본적인 클래스는 최상위 클래스가 NSObject인건 알고있지? dd그래서 저걸 따라가서 보면 NSObject의 클래스 메서드 (+)로 정의되어 있을거야 그렇기 때문에 너가 별도의 인스턴스를 생성하지 않아도 alloc로 접근할 수 있는거지 alloc를 해주면 그거의 반환값으로 instanceType이 반환돼 이제 이 instanceType을 갖고 init을 하는거야 그럼 init은 인스턴스에 대고 하는 작업이니까 인스턴스 메서드겠지? ...쉽게 말해 인스턴스가 반환된다고 생각하면 돼
    //클래스 메소드가 +인게 클래스
    //인스턴스 메소드는 -이고 그냥 함수?맞나
    
    //좀더 깊게 들어가면 넌가 방금까지 보면
    [self sayHello];
    //여기서 앞에 있는 이 self를 리시버라고 해 이 리시버에 대고 나 이 함수 불러줘 하고 뒤에 함수를 쓰는거야
    //근데 클래스 메서드는 리시버가 클래스 이름인거고, 인스턴스 메서드는 리시버가 인스턴스여야해 ㅇㅋ?
    // 클래스 메서드의 경우에는 객체를 생성하지 않고 쓸 수 있는거고 클래스 메서드는 해당 함수가 들어있는 클래스의 이름만 안다면 그 함수를 어디서든 호출할 수 있어 - 스테틱
    //다만 인스턴스 클래스의 경우 인스턴스를 꼭 아 -지역변수같은느낌ㅣ ㅇㅋㅇㅋ 이해했음 됐고 카페와이파이라
    
}

- (void)sayHello {
}

- (NSString *)getm_Name {       //getter
    return m_name;
}

- (void)setm_Name:(NSString *)name {    //setter
    m_name = name;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end



/* 프로퍼티와 전역변수의 차이점이 뭘까?
 전역변수는 어디서든 참조되는거
 프로퍼티는 함수내에서?
 음.. 일단 아니야 ㅜㅜ 프로퍼티는 보통 interface에 선언해 그말이 뭐게ㅔ? 외부에서 접근 하는 변수라는 얘기겠지
 그렇다면 전역변수는 외부에서 접근 못ㅅ하냐? 음..그런가?ㅎ
 다른 문법에서는 public으로 선언되면 할 수 있겠지? ㅇㅇ
 근데 옵젝씨 같은 경우는 public, protected, private을 안 써 물론 쓸 순 있음
 저렇게 쓰면 쓸 수 있어 근데 옵젝씨는 보통!!!!!! 이 세개를 직접 구분짓지 않아 옵젝씨의 기본 변수의 타입은 protected로 선언되어
 그래서 외부에서 접근이 불가해 너가 어떤 전역변수를 선언해도 외부에서 그 변수를 사용할 수 없어 앞에 public을 붙여주지 않는 한 (근데 안씀)
 그럼 내부에서 쓰는 변수를 외부에서 어떻게 접근하느냐? getter, setter 알지? ㅇㅇ
 원래 캢슐화 원칙에 의해서 게터 세터로 만들어서 접근해 만약
 
 이런식으로 너가 직접 변수에 값을 받아오고 할당하는 게터 세터를 만들어줘야해
 근데 이작업을 언제 다하고 있어 만약 외부로 나가야 하는 변수이고 게터세터가 필요한 변수이다? 그럼 프로퍼티로 만드는거야 보여줄게 
 */
