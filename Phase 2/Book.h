//
//  Book.h
//  Task1
//
//  Created by Satu Peltola on 31/10/13.
//  Copyright (c) 2013 Satu Peltola. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject <NSCoding, NSCopying>

@property NSString *author;
@property (nonatomic, copy) NSString *title;
@property NSInteger price;
@property NSString *isbn;
@property NSString *course;

- (id)initWithAuthor:(NSString *)a andTitle:(NSString *)t andPrice:(int)p andIsbn:(NSString *)i andCourse:(NSString *)c;
-(id) copyWithZone: (NSZone *) zone;



@end
