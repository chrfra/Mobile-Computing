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


//pragma mark just for labeling this section of code in xcode
#pragma mark NSCoding and NSCopying

#define kTitle @"title"
/*#define kAge @"age"
#define kAddress @"address"
*/

#define kTitleKey       @"title"

- (void) encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeObject:_title forKey:kTitleKey];
//    [encoder encodeFloat:_rating forKey:kRatingKey];
}

- (id)initWithCoder:(NSCoder *)decoder {
    NSString *title = [decoder decodeObjectForKey:kTitleKey];
//    float rating = [decoder decodeFloatForKey:kRatingKey];
    return [self initWithTitle:title rating:rating];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    
    self = [super init];
    
    if (self) {
        
        /*
         
         Note - same as [self setName:[aDecoder decodeObjectForKey:kName]]
         
         */
        self.title = [aDecoder decodeObjectForKey:kTitle];
        //self.age = [aDecoder decodeIntForKey:kAge];
        //self.address = [aDecoder decodeObjectForKey:kAddress];
        
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {    
    [aCoder encodeObject:self.title forKey:kTitle];
    NSLog(@"Book encoder is saving title %@",self.title);
    /*[aCoder encodeInt:self.age forKey:kAge];
    [aCoder encodeObject:self.address forKey:kAddress];
    */
}

- (id)copyWithZone:(NSZone *)zone {
    
    Book *copy = [[Book allocWithZone:zone] init];
    
    copy.title = [self.title copyWithZone:zone];
    /*copy.age = self.age;
    copy.address = [self.address copyWithZone:zone];
    */
    return copy;
}



@end
