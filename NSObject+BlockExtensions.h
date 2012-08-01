//
//  NSObject+BlockExtensions.h
//  ShootStudio
//
//  Created by Tom Fewster on 30/09/2011.
//  Copyright (c) 2011 Tom Fewster. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (BlockExtensions)

- (void)performBlock:(void (^)(void))block afterDelay:(NSTimeInterval)delay;

@end
