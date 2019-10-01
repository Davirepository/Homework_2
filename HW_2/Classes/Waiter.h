//
//  Waiter.h
//  HW_2
//
//  Created by Давид on 01/10/2019.
//  Copyright © 2019 David. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GuestWaiterKitchen.h"

@interface Waiter : NSObject <GuestWaiterKitchen>

@property (nonatomic, weak) id <GuestWaiterKitchen> delegate;

/// Принимает заказ от гостя
- (void)doOrder;

/// принимает заказ и несет на кухню
- (void)takeOrder;

/// кухня передала заказ официанту
- (void)odereIsDone;

/// официант отнес заказ гостю
- (void)guestGetOrder;

- (void)guestLeaveMoney;

@end

