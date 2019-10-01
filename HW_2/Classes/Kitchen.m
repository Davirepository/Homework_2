//
//  Kitchen.m
//  HW_2
//
//  Created by Давид on 01/10/2019.
//  Copyright © 2019 David. All rights reserved.
//

#import "Kitchen.h"
#import "Waiter.h"
#import "Guest.h"

@implementation Kitchen

/// Официант отнес заказ
- (void)getOrder
{
        NSLog(@"Кухня получила заказ");
}

- (void)foodIsDone
{
    if([self.delegate respondsToSelector:@selector(odereIsDone)])
        [self.delegate odereIsDone];
}

@end
