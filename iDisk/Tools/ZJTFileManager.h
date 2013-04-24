//
//  ZJTFileManager.h
//  iDisk
//
//  Created by Patrick.Coin on 13-4-24.
//  Copyright (c) 2013年 ZJTSoft Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZJTFileManager : NSObject
{
    
}

+(ZJTFileManager*)getSingleton;

+(NSString*)documentsDirectory;

+(NSString*)sharedFilePath:(NSString*)filePath;

+(void)createFolder:(NSString*)folderName
         atBasePath:(NSString*)basePath;

+(void)createFolder:(NSString*)folderName;

+(NSArray*)contentsInFolder:(NSString*)folderPath;
+(NSArray*)contentsInRootFolder;

+(void)moveItemFromPath:(NSString*)fromPath
                 toPath:(NSString*)toPath;

+(void)removeItemAtPath:(NSString*)path;

@end
