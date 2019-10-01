//
//  Guest.m
//  HW_2
//
//  Created by Давид on 01/10/2019.
//  Copyright © 2019 David. All rights reserved.
//

#import "Guest.h"

@implementation Guest

/**
Гость выбирает еду
*/
- (void)choosFood
{
//    делает заказ официанту
    if([self.delegate respondsToSelector:@selector(doOrder)])
        [self.delegate doOrder];
}

- (void)guestGoIt
{
    NSLog(@"Гость получил заказ");
}


/// оставляет чаевые
- (void)haveAGoodMeal
{
    
    if([self.delegate respondsToSelector:@selector(guestLeaveMoney)])
        [self.delegate guestLeaveMoney];
}

@end
