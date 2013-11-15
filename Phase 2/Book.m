//
//  Book.m
//  Task1
//
//  Created by Satu Peltola on 31/10/13.
//  Copyright (c) 2013 Satu Peltola. All rights reserved.
//

#import "Book.h"

@implementation Book


- (id)initWithAuthor:(NSString *)a andTitle:(NSString *)t andPrice: (int) p andIsbn:(NSString *)i andCourse:(NSString *)c {
   
    self=[super init];

    if(self){
        _author= [[NSString alloc] initWithString:a];
        _title= [[NSString alloc] initWithString:t];
        _price = p;
        _isbn= [[NSString alloc] initWithString:i];
        _course= [[NSString alloc] initWithString:c];
        
    }
    
    return self;
};

@end
