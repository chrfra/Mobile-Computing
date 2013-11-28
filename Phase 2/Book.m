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


//Pragma mark just for labeling this section of code in xcode
#pragma mark NSCoding and NSCopying

#define kTitle @"title"
#define kAuthor @"author"
#define kPrice @"price"
#define kIsbn @"isbn"
#define kCourse @"course"

//Init book from saved file
- (id)initWithCoder:(NSCoder *)aDecoder {
    
    self = [super init];
    
    if (self) {
        self.title = [aDecoder decodeObjectForKey:kTitle];
        self.author = [aDecoder decodeObjectForKey:kAuthor];
        self.price = [aDecoder decodeIntForKey:kPrice];
        self.isbn = [aDecoder decodeObjectForKey:kIsbn];
        self.course = [aDecoder decodeObjectForKey:kCourse];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {    
    [aCoder encodeObject:self.title forKey:kTitle];
    [aCoder encodeObject:self.author forKey:kAuthor];
    [aCoder encodeInteger:self.price forKey:kPrice];
    [aCoder encodeObject:self.isbn forKey:kIsbn];
    [aCoder encodeObject:self.course forKey:kCourse];
}

-(id) copyWithZone: (NSZone *) zone
{
    Book *bookCopy = [[Book allocWithZone: zone] initWithAuthor:self.author andTitle:self.title andPrice:self.price andIsbn:self.isbn andCourse:self.isbn];
    return bookCopy;
}

@end
