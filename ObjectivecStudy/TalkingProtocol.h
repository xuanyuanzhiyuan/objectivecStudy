//
//  TalkingProtocol.h
//  ObjectivecStudy
//
//  Created by  Jinyanhua on 14-3-9.
//  Copyright (c) 2014年 com.xysoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TalkingProtocol
-(NSString *) getTalkPersonName:(NSString) name;
@optional
-(NSNumber *) getConversationPersons;
@end
