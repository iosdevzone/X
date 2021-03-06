//
//  Image+macOS.m
//  X
//
//  Created by Sam Soffes on 5/3/15.
//  Copyright (c) 2015 Sam Soffes. All rights reserved.
//

#import "Image+macOS.h"

@implementation NSImage (X)

+ (nullable NSImage *)imageNamed:(nonnull NSString *)name inBundle:(nullable NSBundle *)bundle {
	NSImage *image = [NSImage imageNamed:name];
	if (image != nil) {
		return image;
	}

	image = [bundle imageForResource:name];
	if (image != nil) {
		[image setName:name];
		return image;
	}

	return nil;
}

@end
