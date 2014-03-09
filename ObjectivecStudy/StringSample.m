//
//  StringSample.m
//  ObjectivecStudy
//
//  Created by  Jinyanhua on 14-3-9.
//  Copyright (c) 2014年 com.xysoft. All rights reserved.
//

#import "StringSample.h"

@implementation StringSample
-(void) stringCreateWays{
    NSString * standardStr = [[NSString alloc] initWithCString:"old string" encoding:NSUTF8StringEncoding];
    NSLog(standardStr);
    
    NSString * constantStr = @"constant string";
    
    NSString * factoryMethodStr = [NSString stringWithFormat:@"hello, @%",@"world"];
    
    NSNumber* age = [NSNumber numberWithInt:5];
    NSString* stringWithNum = [NSString stringWithFormat:@"your age is %i",age];
}

@end
