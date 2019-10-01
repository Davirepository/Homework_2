//
//  GuestWaiterKitchen.h
//  HW_2
//
//  Created by Давид on 01/10/2019.
//  Copyright © 2019 David. All rights reserved.
//

/**
 Протокол  заказа еды
 */
@protocol GuestWaiterKitchen <NSObject>
@optional
/**
 Уведомляет о том, что гость сделал заказ
 */
- (void)doOrder;
/**
 Уведомляет о том, что гость оставил чаевые
 */
- (void)guestLeaveMoney;

/**
 Официант отнес заказ на кухню
 */
- (void)getOrder;

/**
 Уведомляет официанта о том, что заказ готов
 */
- (void)odereIsDone;

/// гость получил заказ
- (void)guestGotIt;

@end
