//
//  BlockDemo.m
//  ObjectivecStudy
//
//  Created by  Jinyanhua on 14-3-9.
//  Copyright (c) 2014年 com.xysoft. All rights reserved.
//

#import "BlockDemo.h"

@implementation BlockDemo
-(void) demoBlock{
    int(^myBlock)(int,int);
    myBlock=^int(int firstArg,int secondArg){
        return firstArg+secondArg;
    };
    int sum = myBlock(99,34);
}

-(void) demoBlockReadVar{
    int var = 99;
    void(^readVarBlock)(void)=^{
        NSLog(@"the local var's value is %i",var);
    };
    var = 100;
    readVarBlock();
    //__block modifier
    __block int var2 = 55;
    void(^readVarBlock2)(void)=^{
        NSLog(@"the local var's value is %i",var2);
    };
    var2++;
    readVarBlock2();
}

-(void) iterateUseBlock{
    NSArray* myArray = @[@"www",@"hust",@"edu",@"cn",@1214,@2432];
    void (^myIteratorBlock)(id,NSUInteger,BOOL *)=^(id obj,NSUInteger idx,BOOL *stop){
        NSLog(@"the obj is %@",obj);
        NSLog(@"the index is %lu",idx);
    };
    [myArray enumerateObjectsUsingBlock:myIteratorBlock];
    NSMutableArray* processedArray = [[NSMutableArray alloc] init];
    void (^upcaseAllBlock)(id,NSUInteger,BOOL *)=^(id obj,NSUInteger idx,BOOL *stop){
        if([obj isKindOfClass:[NSString class]]){
            [processedArray addObject:[obj uppercaseString]];
        }
    };
    [myArray enumerateObjectsUsingBlock:upcaseAllBlock];
    [processedArray enumerateObjectsUsingBlock:myIteratorBlock];
    
    @try{
        NSLog(@"test try cluase");
    }
    @catch (NSException * e) {
        [e description];
        NSLog([e reason]);
    }
    @finally {
        NSLog(@"in finally block...");
    }
    
}

@end
