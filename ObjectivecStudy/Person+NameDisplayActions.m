//
//  Person+NameDisplayActions.m
//  ObjectivecStudy
//
//  Created by  Jinyanhua on 14-3-9.
//  Copyright (c) 2014年 com.xysoft. All rights reserved.
//

#import "Person+NameDisplayActions.h"

@implementation Person (NameDisplayActions)
-(NSString *) displayAllPersonInfo{
    return [NSString stringWithFormat:@"name is %@, email is %@",self.name,self.email];
}
@end
