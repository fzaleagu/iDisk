//
//  File.h
//  iDisk
//
//  Created by Patrick.Coin on 13-4-24.
//  Copyright (c) 2013年 ZJTSoft Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface File : NSManagedObject

@property (nonatomic, retain) NSDate * createDate;
@property (nonatomic, retain) NSDate * modifyDate;
@property (nonatomic, retain) NSNumber * fileType;

@end
