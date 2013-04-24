//
//  ZJTViewController.m
//  iDisk
//
//  Created by Patrick.Coin on 13-4-24.
//  Copyright (c) 2013年 ZJTSoft Inc. All rights reserved.
//

#import "ZJTViewController.h"

@interface ZJTViewController ()

@end

@implementation ZJTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
        
    NSArray *arr = [ZJTFileManager contentsInRootFolder];
    
    [ZJTFileManager createFolder:@"Files"];
    for (NSString *file in arr)
    {
        NSLog(@"file = %@",file);
    }
}

@end
