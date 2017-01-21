//
//  RLServer.m
//  RemoteLogger
//
//  Created by YourtionGuo on 10/01/2017.
//  Copyright © 2017 Yourtion. All rights reserved.
//

#import "RLServer.h"
#import "CoreWebSocket.h"
#import <ifaddrs.h>
#import <arpa/inet.h>

@implementation RLServer

void Callback(WebSocketRef self, WebSocketClientRef client, CFStringRef value) {
    if (value) {
        CFShow(value);
        CFStringRef aCFString = (__bridge_retained CFStringRef) @"{\"a\":\"aaaaaaa\"}";
        WebSocketWriteWithString(self, aCFString);
    }
}

+ (void)startServerWithPort:(int)port {
    WebSocketRef webSocket = WebSocketCreateWithHostAndPort(NULL, kWebSocketHostAny, 6001, NULL);
    if (webSocket) {
        webSocket->callbacks.didClientReadCallback = Callback;
    }
}



+ (NSString *)getDeviceIp {
    NSString *ip = @"Error";
    struct ifaddrs *interfaces = nil;
    struct ifaddrs *temp_addr = nil;
    
    int success = getifaddrs(&interfaces);
    //获取地址成功
    if (!success)
    {
        temp_addr = interfaces;
        while (temp_addr != NULL) {
            if( temp_addr->ifa_addr->sa_family == AF_INET) {
                // Check if interface is en0 which is the wifi connection on the iPhone
                if ([[NSString stringWithUTF8String:temp_addr->ifa_name] isEqualToString:@"en0"]) {
                    // Get NSString from C String
                    ip = [NSString stringWithUTF8String:inet_ntoa(((struct sockaddr_in *)temp_addr->ifa_addr)->sin_addr)];
                }
            }
            
            temp_addr = temp_addr->ifa_next;
        }
    }
    
    freeifaddrs(interfaces);
    return ip;
}

@end
