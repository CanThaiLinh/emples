//
//  EmplesGalleryView.h
//  emplesMVC
//
//  Created by Vasily Popov on 10/28/17.
//  Copyright © 2017 Vasily Popov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EmplesGridModelDecorator.h"
#import "EmplesCollectionViewProtocol.h"

@interface EmplesGalleryView : UIViewController<EmplesCollectionViewProtocol>

@property (nonatomic, strong) EmplesGridModelDecorator *model;

@end
