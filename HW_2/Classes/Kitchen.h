//
//  Kitchen.h
//  HW_2
//
//  Created by Давид on 01/10/2019.
//  Copyright © 2019 David. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GuestWaiterKitchen.h"

@interface Kitchen : NSObject <GuestWaiterKitchen>

@property (nonatomic, weak) id <GuestWaiterKitchen> delegate;


/// кухня получила заказ от официанта
- (void)getOrder;

- (void)foodIsDone;

@end

