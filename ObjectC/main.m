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
-(void)setWheels:(int)w;
-(void)setSeats:(int)s;
-(void)print;
@end

@implementation Vehicle
-(void)setWheels:(int)w{
    wheels = w;
}
-(void)setSeats:(int)s{
    seats = s;
}
-(void)print{
    NSLog(@"wheels : %i, seats : %i",wheels,seats);
}


@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //create instance object
        //관례적으로 new를 쓰지 않음. (동적할당과 초기화를 따로함)
        //Vehicle *hello = [Vehicle new];
        Vehicle *hello = [[Vehicle alloc]init];
        //[Receiver Message]
        [hello setWheels:4];
        [hello setSeats:2];
        [hello print];
        
        
    }
    return 0;
}
