//
//  RLServer.h
//  RemoteLogger
//
//  Created by YourtionGuo on 10/01/2017.
//  Copyright © 2017 Yourtion. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RLServer : NSObject
+ (void)startServerWithPort:(int)port;
+ (NSString *)getDeviceIp;
@end
