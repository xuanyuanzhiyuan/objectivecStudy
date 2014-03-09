//
//  CollectionsInObjectiveC.m
//  ObjectivecStudy
//
//  Created by  Jinyanhua on 14-3-9.
//  Copyright (c) 2014年 com.xysoft. All rights reserved.
//

#import "CollectionsInObjectiveC.h"

@implementation CollectionsInObjectiveC
-(void) demoArray{
    NSArray* array = @[@"first",@"second",@89,@343.54];
    NSArray* arrayInit = [[NSArray alloc] initWithObjects:@"first",@"2",@"3", nil];
    
    for (id obj in array) {
        NSLog(@"obj: %@",obj);
    }
}

-(void) demoSet{
    NSSet* set = @[@"first",@"first"];
    NSLog([NSString stringWithFormat:@"the size of set is %lu",(unsigned long)[set count]]);
}

-(void) demoDictionary{
    NSDictionary* dict = @{@"key1":@445,@"magicNumber":@42};
    id num = [dict objectForKey:@"magicNumer"];
    
}
@end
