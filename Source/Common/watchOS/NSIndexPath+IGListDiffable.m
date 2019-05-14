//
//  NSIndexPath+WatchAdditions.m
//  IGListDiff-watchOS
//
//  Created by Ortwin Gentz on 14.05.19.
//  Copyright © 2019 FutureTap GmbH. All rights reserved.
//

#import "NSIndexPath+IGListDiffable.h"

#if TARGET_OS_WATCH
@implementation NSIndexPath (IGListDiffable)

+ (instancetype)indexPathForItem:(NSInteger)item inSection:(NSInteger)section {
	NSUInteger u_array[] = {section, item};
	return [self indexPathWithIndexes:u_array length:2];
}

- (NSInteger)section {
    return [self indexAtPosition:0];
}


- (NSInteger)row {
    return [self indexAtPosition:1];
}

- (NSInteger)item {
    return [self indexAtPosition:1];
}

@end
#endif
