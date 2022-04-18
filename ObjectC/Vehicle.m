//
//  Vehicle.m
//  ObjectC
//
//  Created by beintech on 2022/04/18.
//

#import "Vehicle.h"

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
-(void) setWheels:(int)w Seats:(int)s{
    wheels = w;
    seats = s;
}
@end
