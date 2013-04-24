//
//  ZJTBaseCell.m
//  iDisk
//
//  Created by Patrick.Coin on 13-4-24.
//  Copyright (c) 2013年 ZJTSoft Inc. All rights reserved.
//

#import "ZJTBaseCell.h"

@implementation ZJTBaseCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
