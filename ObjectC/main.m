//
//  main.m
//  ObjectC
//
//  Created by beintech on 2022/04/18.
//

#import <Foundation/Foundation.h>
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
@end

@implementation Vehicle
//-(void)setWheels:(int)w{
//    wheels = w;
//}
//-(void)setSeats:(int)s{
//    seats = s;
//}
//안해도 되지만 자동완성기능때문에 함.
@synthesize  wheels;
@synthesize  seats;
-(void)print{
    NSLog(@"wheels : %i, seats : %i",wheels,seats);
}

//-(int)seats{
//    return seats;
//}
//-(int)wheels{
//    return wheels;
//}


@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //create instance object
        //관례적으로 new를 쓰지 않음. (동적할당과 초기화를 따로하는것이 보통임)
        //Vehicle *hello = [Vehicle new];
        Vehicle *hello = [[Vehicle alloc]init];
        //[Receiver Message]
        [hello setWheels:4];
        [hello setSeats:2];
        //[hello print];
        NSLog(@"wheels : %i, seats : %i",[hello getWheels],[hello seats]);
        //dot 연산자
        //java 처럼 . 으로 변수에 값 대입 또는 메소드호출이 가능함.
        hello.wheels = 4;
        hello.seats = 5;
        NSLog(@"wheels : %i, seats : %i",hello.getWheels,hello.seats);
        
        
    }
    return 0;
}
