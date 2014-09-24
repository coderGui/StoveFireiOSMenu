//
//  DXEDishItem.h
//  DianXiaoEr-Menu-iOS
//
//  Created by Joe Shang on 8/31/14.
//  Copyright (c) 2014 Shang Chuanren. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DXEDishItem : NSObject <NSCopying>

@property (nonatomic, strong) NSNumber *itemid;
@property (nonatomic, strong) NSNumber *classid;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *englishName;
@property (nonatomic, strong) NSString *imageKey;
@property (nonatomic, strong) NSNumber *showSequence;
@property (nonatomic, strong) NSNumber *price;
@property (nonatomic, strong) NSNumber *favor;
@property (nonatomic, strong) NSString *ingredient;
@property (nonatomic, strong) NSNumber *soldout;

@property (nonatomic, assign) BOOL inCart;
@property (nonatomic, assign) BOOL inFavor;
@property (nonatomic, strong) NSNumber *count;
@property (nonatomic, strong) NSNumber *progress;
@property (nonatomic, strong) NSString *tradeid;

- (void)updateByNewObject:(DXEDishItem *)update;

@end
