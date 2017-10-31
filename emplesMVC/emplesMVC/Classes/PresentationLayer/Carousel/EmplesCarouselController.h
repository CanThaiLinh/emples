//
//  EmplesCarouselController.h
//  emplesMVC
//
//  Created by Vasily Popov on 10/31/17.
//  Copyright © 2017 Vasily Popov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EmplesAreasModel.h"
#import "EmplesCarouselView.h"
#import "EmplesItemRouter.h"

@interface EmplesCarouselController : NSObject

@property (nonatomic, weak) EmplesCarouselView *view;
@property (nonatomic, strong) EmplesItemRouter *router;

-(instancetype)init __unavailable;
-(instancetype)initWithModel:(EmplesAreasModel*)model NS_DESIGNATED_INITIALIZER;

-(void)viewDidLoad;


@end