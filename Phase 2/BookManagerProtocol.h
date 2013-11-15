//
//  BookManagerProtocol.h
//  Task1
//
//  Created by Satu Peltola on 02/11/13.
//  Copyright (c) 2013 Satu Peltola. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Book;
@protocol BookManagerProtocol <NSObject>


    - (NSUInteger)count;
    - (Book *)bookAtIndex:(NSUInteger)index;
    - (Book *)createBook:(NSString *)a andTitle:(NSString *)t andPrice: (int) p andIsbn:(NSString *)i andCourse:(NSString *)c;
    -(void)addBook:(Book *)b;
    - (NSArray *)allBooks;
    - (void)removeBook:(Book *)b;
    - (void)moveBookAtIndex:(NSUInteger)from toIndex:(NSUInteger)to;
    - (NSUInteger)minPrice; - (NSUInteger)maxPrice; - (CGFloat)meanPrice;
    - (NSUInteger)totalCost;
    - (void)saveChanges;


@end
