//
//  NSTimer+BlockExtensions.h
//  RouteMonitor
//
//  Created by Tom Fewster on 13/01/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (BlockExtensions)

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)interval expiryBlock:(void (^)())block repeats:(BOOL)repeats;

@end
