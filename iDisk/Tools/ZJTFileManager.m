//
//  ZJTFileManager.m
//  iDisk
//
//  Created by Patrick.Coin on 13-4-24.
//  Copyright (c) 2013年 ZJTSoft Inc. All rights reserved.
//

#import "ZJTFileManager.h"

static ZJTFileManager *_sharedInstance = nil;

@implementation ZJTFileManager

+(ZJTFileManager*)getSingleton
{
	@synchronized (self)
    {
        if (_sharedInstance == nil)
        {
            _sharedInstance = [[ZJTFileManager alloc] init];
            return _sharedInstance;
        }
    }
    return _sharedInstance;
}

-(id)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

+(NSString*)documentsDirectory
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = ([paths count] > 0) ? [paths objectAtIndex:0] : nil;
    NSLog(@"Documents Directory = %@",basePath);
    return basePath;
}

+(NSString*)sharedFilePath:(NSString*)filePath
{
    return [[ZJTFileManager documentsDirectory] stringByAppendingPathComponent: filePath];
}

+(void)createFolder:(NSString*)folderName
{    
    [ZJTFileManager createFolder:folderName
                      atBasePath:[ZJTFileManager documentsDirectory]];
}

+(void)createFolder:(NSString*)folderName atBasePath:(NSString*)basePath
{
    NSString *folderPath = [basePath stringByAppendingPathComponent:folderName];
    
    if (![[NSFileManager defaultManager] fileExistsAtPath:folderPath])
    {
        NSError *error = nil;
        [[NSFileManager defaultManager] createDirectoryAtPath:folderPath
                                  withIntermediateDirectories:YES
                                                   attributes:nil
                                                        error:&error];
        if (error)
        {
            NSLog(@"creatFolder:atBasePath: --> error:%@",[error localizedDescription]);
        }
    }
    else
    {
        NSLog(@"%@ is already exists",folderName);
    }
}

+(NSArray*)contentsInFolder:(NSString*)folderPath
{
    NSError *error = nil;
    NSArray *arr = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:folderPath
                                                                       error:&error];
    if (error) {
        NSLog(@"contentsInFolder: --> error:%@",[error localizedDescription]);
    }
    return arr;
}

+(NSArray*)contentsInRootFolder
{
    return [ZJTFileManager contentsInFolder:[ZJTFileManager documentsDirectory]];
}

//Moves the file or directory at the specified path to a new location synchronously.
+(void)moveItemFromPath:(NSString*)fromPath
                 toPath:(NSString*)toPath
{
    NSError *error = nil;
    [[NSFileManager defaultManager] moveItemAtPath:fromPath
                                            toPath:toPath
                                             error:&error];
    
    if (error) {
        NSLog(@"moveItemFromPath:toPath: --> error:%@",[error localizedDescription]);
    }
}

//Removes the file or directory at the specified path.
+(void)removeItemAtPath:(NSString*)path
{
    NSError *error = nil;
    [[NSFileManager defaultManager] removeItemAtPath:path
                                               error:&error];
    
    if (error) {
        NSLog(@"removeItemAtPath: --> error:%@",[error localizedDescription]);
    }
}

@end
