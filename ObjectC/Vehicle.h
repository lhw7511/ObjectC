//
//  Vehicle.h
//  ObjectC
//
//  Created by beintech on 2022/04/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Vehicle : NSObject{
    //member variable
    //초기화 하면 안됨
//property를 사용하면 내부변수를 선언해주지않아도 동작가능
//    int wheels;
//    int seats;
}
//member method
//getter setter 를 수동으로 선언해주지 않아도 자동으로 만들어줌(java lombok과 유사)
//property의 기본 getter명은 변수명, setter명은 set+변수명(첫글자대문자)로인식함. 하지만 기본 object c 스타일을 따르는것이 좋음
@property (getter=getWheels) int wheels;
@property int seats;
//setter
//-(void)setWheels:(int)w;
//-(void)setSeats:(int)s;
//getter
//objective c 에서 getter명은 변수명과 동일하게 쓰는것이 권장됨.
//-(int)wheels;
//-(int)seats;
-(void)print;

//파라미터 여러개 받기
-(void) setWheels:(int)w Seats:(int)s;

@end

NS_ASSUME_NONNULL_END
