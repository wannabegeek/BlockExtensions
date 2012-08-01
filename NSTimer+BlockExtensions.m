//
//  NSTimer+BlockExtensions.m
//  RouteMonitor
//
//  Created by Tom Fewster on 13/01/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NSTimer+BlockExtensions.h"

@interface TimerHelper : NSObject
@end

@implementation NSTimer (BlockExtensions)

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)interval expiryBlock:(void (^)())block repeats:(BOOL)repeats {
	//objc_setAssociatedObject(self, "blockCallback", [block copy], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
	return [NSTimer scheduledTimerWithTimeInterval:interval target:[[TimerHelper alloc] init] selector:@selector(timerCallback:) userInfo:[block copy] repeats:repeats];
	
}

@end

@implementation TimerHelper

- (void)timerCallback:(NSTimer *)timer {
	void (^block)() = (void (^)())timer.userInfo;//objc_getAssociatedObject(self, "blockCallback");
	block();
}

@end
