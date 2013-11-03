//
//  ToDoListToDoItem.h
//  ToDoList
//
//  Created by Christopher Dumas on 11/2/13.
//  Copyright (c) 2013 Christopher Dumas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoListToDoItem : NSObject

@property NSString *itemName;
@property NSString *itemDescription;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
