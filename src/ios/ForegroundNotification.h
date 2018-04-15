#import <Cordova/CDV.h>
#import <Cordova/CDVPlugin.h>
@import UserNotifications;

@interface ForegroundNotification : CDVPlugin

- (void) init:(CDVInvokedUrlCommand*)command;

@end
