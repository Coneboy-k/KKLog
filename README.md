# KKLog
A Open source Log System for OC

## Requirements
KKLog works on any iOS version. Only ARC.

## Adding KKLog to your project

Include KKLog wherever you need it with `#import "KKLog.h"` .

### Source files

Alternatively you can directly add the `KKLog.h`& `KKLog.m`  source files to your project.

OR  USE POD

`pod 'KKLog'`

## Usage

1.Startup

    void uncaughtExceptionHandler(NSException *exception)
    {
        [KKLog logCrash:exception];
    }
    
`- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions ` 

    // signExceptionHandler 
    NSSetUncaughtExceptionHandler(&uncaughtExceptionHandler);
    
    // install KKlog
    [KKLog logIntial];
    // set logLevel
    [KKLog setLogLevel:LOGLEVELD];

 
2.U can use This method
                
    [KKLog logI:@"info"];
    [KKLog logE:@"error"];
    [KKLog logW:@"worring"];...
    
    KKLogI(@"info");
    KKLogD(@"DDDD");...
    
3.Have fun!
 
 
