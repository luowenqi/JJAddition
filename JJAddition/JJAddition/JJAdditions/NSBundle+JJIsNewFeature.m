//
//  NSBundle+JJIsNewFeature.m
//  weiboOC
//
//  Created by 罗文琦 on 2017/4/9.
//  Copyright © 2017年 罗文琦. All rights reserved.
//

#import "NSBundle+JJIsNewFeature.h"

@implementation NSBundle (JJIsNewFeature)


+(BOOL)isNewVersion{
    
    //这里所有的键都是系统已经设定好的键,不允许修改
    //获取当前APP的版本号
    NSString* Version = [NSBundle mainBundle].infoDictionary[@"CFBundleShortVersionString"];
    //沙盒里面的保存的APP 版本号
    NSString* oldVersion = [[NSUserDefaults standardUserDefaults] valueForKey:@"versionKey"];
    
    if (oldVersion == nil || [Version isEqualToString:oldVersion] == NO) { //有新版本
        //保存新的版本号
        [[NSUserDefaults standardUserDefaults] setValue:Version forKey:@"versionKey"];
         return YES;
    }
    return NO;
}

@end
