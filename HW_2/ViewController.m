//
//  ViewController.m
//  HW_2
//
//  Created by Давид on 01/10/2019.
//  Copyright © 2019 David. All rights reserved.
//

#import "ViewController.h"
#import "GuestWaiterKitchen.h"
#import "Guest.h"
#import "Waiter.h"
#import "Kitchen.h"

@interface ViewController () <GuestWaiterKitchen>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Guest *guest = [[Guest alloc] init];
    Waiter *waiter = [[Waiter alloc] init];
    Kitchen *kitchen = [[Kitchen alloc] init];
    guest.delegate = waiter;
    waiter.delegate = kitchen;
    kitchen.delegate = waiter;
    [guest choosFood];
    [waiter takeOrder];
    [kitchen foodIsDone];
    [guest guestGoIt];
    [waiter guestLeaveMoney];
}

@end
