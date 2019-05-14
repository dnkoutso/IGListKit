//
//  NSIndexPath+WatchAdditions.h
//  IGListDiff-watchOS
//
//  Created by Ortwin Gentz on 14.05.19.
//  Copyright © 2019 FutureTap GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>

#if TARGET_OS_WATCH
@interface NSIndexPath (IGListDiffable)
+ (instancetype)indexPathForItem:(NSInteger)item inSection:(NSInteger)section;
@property(nonatomic, readonly) NSInteger section;
@property(nonatomic, readonly) NSInteger row;
@property(nonatomic, readonly) NSInteger item;
@end
#endif
