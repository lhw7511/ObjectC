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
    int wheels;
    int seats;
}
//member method
//getter setter 를 수동으로 선언해주지 않아도 자동으로 만들어줌(java lombok과 유사)
@property int wheels;
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
        NSLog(@"wheels : %i, seats : %i",[hello wheels],[hello seats]);
        
        
    }
    return 0;
}
