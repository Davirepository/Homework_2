//
//  Waiter.m
//  HW_2
//
//  Created by Давид on 01/10/2019.
//  Copyright © 2019 David. All rights reserved.
//

#import "Waiter.h"
#import "Guest.h"
#import "Kitchen.h"

@interface Waiter ()

@end

@implementation Waiter

/**
Гость сделал заказ
*/
- (void)doOrder
{
        NSLog(@"Гость сделал заказ");
}


/// официант получил блюдо от кухни
- (void)odereIsDone
{
    NSLog(@"Официант относит заказ гостю");
}


/// официант передает заказ кухне
- (void)takeOrder
{
    if([self.delegate respondsToSelector:@selector(getOrder)])
        [self.delegate getOrder];
}

- (void)guestGetOrder
{
    if([self.delegate respondsToSelector:@selector(guestGotIt)])
        [self.delegate guestGotIt];
}

- (void)guestLeaveMoney
{
    if(arc4random()%2){
        NSLog(@"Гость оставил чаевые");
    } else
    {
        NSLog(@"Официант остался без чаевых");
    }
}

@end
