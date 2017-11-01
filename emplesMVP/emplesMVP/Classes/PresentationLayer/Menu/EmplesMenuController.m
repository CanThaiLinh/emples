//
//  EmplesMenuController.m
//  emplesMVC
//
//  Created by Vasily Popov on 10/28/17.
//  Copyright © 2017 Vasily Popov. All rights reserved.
//

#import "EmplesMenuController.h"
#import "EnumMenuSelectedItem.h"
#import <GoogleMaps/GoogleMaps.h>
#define GOOGLE_MAPS_APIKEY @"AIzaSyBq67F_e2PQEWtKgCDDkHBpnVH1r383nQo"

@interface EmplesMenuController () <EmplesMenuSelectProtocol>

@property (nonatomic, strong) EmplesMenuModel *model;

@end

@implementation EmplesMenuController

-(instancetype)initWithModel:(EmplesMenuModel*)model
{
    self = [super init];
    if (self) {
        self.model = model;
        self.model.delegate = self;
        [GMSServices provideAPIKey:GOOGLE_MAPS_APIKEY];
    }
    return self;
}


#pragma mark - EmplesMenuRouteProtocol

-(void)selectedItem:(EnumMenuSelectedItem)item;
{
    [self.router navigateToSelectedItem:item];
}

@end
