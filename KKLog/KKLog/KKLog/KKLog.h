//
//  KKLog.h
//  KKLog
//
//  Created by JackSun on 15/4/9.
//  Copyright (c) 2015年 Coneboy_K. All rights reserved.
//

#import <Foundation/Foundation.h>

//日志等级
typedef enum
{
    LOGLEVELV = 0,  //wend
    LOGLEVELD = 1,  //Debug
    LOGLEVELI = 2,  //Info
    LOGLEVELW = 3,  //Warning
    LOGLEVELE = 4,  //Error
} KKLogLevel;

@interface KKLog : NSObject
/**
 @brief log初始化函数，在系统启动时调用
 */
+ (void)logIntial;
/**
 @brief 设置要记录的log级别
 @param level 要设置的log级别
 */
+ (void)setLogLevel:(KKLogLevel)level;


/**
 @brief 记录系统crash的Log函数
 @param exception 系统异常
 */
+ (void)logCrash:(NSException*)exception;
/**
 @brief log记录函数
 @param level log所属的等级
 @param format 具体记录log的格式以及内容
 */
+ (void)logLevel:(KKLogLevel)level LogInfo:(NSString*)format,... NS_FORMAT_FUNCTION(2,3);


/**
 @brief LOGLEVELV级Log记录函数
 @param format 具体记录log的格式以及内容
 */
+ (void)logV:(NSString*)format,... NS_FORMAT_FUNCTION(1,2);
/**
 @brief LOGLEVELD级Log记录函数
 @param format 具体记录log的格式以及内容
 */
+ (void)logD:(NSString*)format,... NS_FORMAT_FUNCTION(1,2);
/**
 @brief LOGLEVELI级Log记录函数
 @param format 具体记录log的格式以及内容
 */
+ (void)logI:(NSString*)format,... NS_FORMAT_FUNCTION(1,2);
/**
 @brief LOGLEVELW级Log记录函数
 @param format 具体记录log的格式以及内容
 */
+ (void)logW:(NSString*)format,... NS_FORMAT_FUNCTION(1,2);
/**
 @brief LOGLEVELE级Log记录函数
 @param format 具体记录log的格式以及内容
 */
+ (void)logE:(NSString*)format,... NS_FORMAT_FUNCTION(1,2);



@end
