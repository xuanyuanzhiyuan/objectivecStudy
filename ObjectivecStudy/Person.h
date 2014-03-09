//
//  Person.h
//  ObjectivecStudy
//
//  Created by  Jinyanhua on 14-3-9.
//  Copyright (c) 2014年 com.xysoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TalkingProtocol.h"

@interface Person : NSObject <TalkingProtocol>
@property NSString *name;
@property NSString *email;
@property NSNumber *birthOfYear;
@property(atomic,readonly) NSString *ID;
-(void) sayHello:(NSString *) talk2PersonName;
@end
