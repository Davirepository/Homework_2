//
//  Guest.h
//  HW_2
//
//  Created by Давид on 01/10/2019.
//  Copyright © 2019 David. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GuestWaiterKitchen.h"

@interface Guest : NSObject

@property (nonatomic, weak) id <GuestWaiterKitchen> delegate;

/**
 Гость выбирает еду
 */
- (void)choosFood;

- (void)guestGoIt;

- (void)haveAGoodMeal;

@end
