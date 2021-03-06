//
//  EmplesItemView.m
//  emplesMVC
//
//  Created by Vasily Popov on 10/31/17.
//  Copyright © 2017 Vasily Popov. All rights reserved.
//

#import "EmplesItemView.h"
#import "EmplesListCellViewModel.h"

#import <SDWebImage/UIImageView+WebCache.h>
@interface EmplesItemView()

@property(nonatomic, weak) IBOutlet UILabel *titleLabel;
@property(nonatomic, weak) IBOutlet UIImageView *iconView;

@property (strong, nonatomic) EmplesListCellViewModel *viewModel;

@end

@implementation EmplesItemView

- (void)configureWithModel:(id<ViewCellModelProtocol>)viewModel
{
    if ([viewModel isKindOfClass:[EmplesListCellViewModel class]])
    {
        self.viewModel = (EmplesListCellViewModel *)viewModel;
    }
}

-(void)awakeFromNib
{
    [super awakeFromNib];
    self.layer.borderColor = [UIColor brownColor].CGColor;
    self.layer.borderWidth = 2;
    self.layer.cornerRadius = 10;
    RAC(self.titleLabel, text) = RACObserve(self, viewModel.text);
    RAC(self.titleLabel, font) = RACObserve(self, viewModel.font);
    RAC(self.titleLabel, textColor) = RACObserve(self, viewModel.textColor);
    RAC(self, backgroundColor) = RACObserve(self, viewModel.bgColor);
    @weakify(self);
    [[[RACObserve(self, viewModel.imageURL) ignore:nil] distinctUntilChanged]
     subscribeNext:^(id _)
     {
         @strongify(self);
         [self.iconView sd_setImageWithURL:[NSURL URLWithString:self.viewModel.imageURL]];
     }];
}

@end
