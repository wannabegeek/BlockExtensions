//
//  NSObject+BlockExtensions.m
//  ShootStudio
//
//  Created by Tom Fewster on 30/09/2011.
//  Copyright (c) 2011 Tom Fewster. All rights reserved.
//

#import "NSObject+BlockExtensions.h"

@implementation NSObject (BlockExtensions)

- (void)performBlock:(void (^)(void))block afterDelay:(NSTimeInterval)delay
{
	int64_t delta = (int64_t)(1.0e9 * delay);
	dispatch_after(dispatch_time(DISPATCH_TIME_NOW, delta), dispatch_get_main_queue(), block);
}

@end
