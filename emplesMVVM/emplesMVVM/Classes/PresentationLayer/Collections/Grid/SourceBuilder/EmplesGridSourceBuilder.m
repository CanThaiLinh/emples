//
//  EmplesGridModelDecorator.m
//  emplesMVC
//
//  Created by Vasily Popov on 10/30/17.
//  Copyright © 2017 Vasily Popov. All rights reserved.
//

#import "EmplesGridSourceBuilder.h"
#import "EmplesRecreationAreaModel.h"
#import "EmplesGridCellViewModel.h"
#import "EmplesViewCellDecorator.h"

@implementation EmplesGridSourceBuilder

+(NSArray *)buildSourceFromItems:(NSArray *)items
{
    NSMutableArray *sourseItems = [NSMutableArray arrayWithCapacity:items.count];
    for (int index = 0; index < items.count; index ++)
    {
        EmplesRecreationAreaModel *item = items[index];
        EmplesGridCellViewModel *model = [EmplesGridCellViewModel new];
        model.text = item.areaName;
        model.imageURL = item.imageURL;
        EmplesViewCellDecorator *decorator = [EmplesViewCellDecorator decoratedInstanceOf:model];
        decorator.ponsoModel = item;
        [sourseItems addObject:decorator];
    }
    return sourseItems;
}

@end
