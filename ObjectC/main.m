//
//  main.m
//  ObjectC
//
//  Created by beintech on 2022/04/18.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"


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
        
        //파라미터 여러개 받기
        [hello setWheels:10 Seats:10];
        NSLog(@"wheels : %i, seats : %i",hello.getWheels,hello.seats);
        
        
    }
    return 0;
}
