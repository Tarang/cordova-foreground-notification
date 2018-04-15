#import "ForegroundNotification.h"

@implementation ForegroundNotification

- (void)userNotificationCenter:(UNUserNotificationCenter* )center willPresentNotification:(UNNotification* )notification withCompletionHandler:(void (^)(UNNotificationPresentationOptions options))completionHandler {
    NSLog( @"Here handle push notification in foreground" );
    //For notification Banner - when app in foreground

//    completionHandler(UNNotificationPresentationOptionAlert);

    if([notification.request.content.userInfo objectForKey:@"foreground"] )  {
        completionHandler(UNNotificationPresentationOptionAlert);
    }else{
        completionHandler(UNNotificationPresentationOptionNone);
    }

    // Print Notification info
    NSLog(@"Userinfo %@",notification.request.content.userInfo);
}

- (void)pluginInitialize
{
   [[UNUserNotificationCenter currentNotificationCenter] setDelegate:self];
}

@end
