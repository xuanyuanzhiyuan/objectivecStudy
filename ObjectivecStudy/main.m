//
//  main.m
//  ObjectivecStudy
//
//  Created by  Jinyanhua on 14-3-9.
//  Copyright (c) 2014年 com.xysoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BlockDemo.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        BlockDemo* demo = [BlockDemo new];
        [demo demoBlockReadVar];
        //[demo demoBlock];
        [demo iterateUseBlock];
    }
    return 0;
}

