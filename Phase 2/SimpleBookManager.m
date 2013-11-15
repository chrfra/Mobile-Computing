//
//  SimpleBookManager.m
//  Task1
//
//  Created by Satu Peltola on 02/11/13.
//  Copyright (c) 2013 Satu Peltola. All rights reserved.
//

#import "SimpleBookManager.h"
#import "Book.h"

@implementation SimpleBookManager

- (id)init{
    self=[super init];

    if(self){
        
        self.books = [NSMutableArray array];
        [self addSampleBooks];

    }
    return self;
}

- (NSUInteger)count {
    return _books.count;
}

- (Book *)bookAtIndex:(NSUInteger)index;{
    return [_books objectAtIndex: index];
}

- (Book *)createBook:(NSString *)a andTitle:(NSString *)t andPrice: (int) p andIsbn:(NSString *)i andCourse:(NSString *)c{
    
    Book *book7 = [[Book alloc] initWithAuthor:a andTitle:t andPrice:p andIsbn: i andCourse: c];
    
    [_books addObject:book7];
    
    return book7;
}

- (void)addBook:(Book *)b{
    [_books addObject:b];
}

- (NSArray *)allBooks{
    return _books;
    
}
- (void)removeBook:(Book *)b{
}
- (void)moveBookAtIndex:(NSUInteger)from toIndex:(NSUInteger)to{
}
- (NSUInteger)minPrice{
    int minprice=1000000;
    for(Book *book in _books){
        
        if(book.price < minprice ){
        minprice = book.price;
        }
        
    }
    
    return minprice;
    
}
- (NSUInteger)maxPrice{
    int maxprice=0;
    for(Book *book in _books){
        
        if(book.price > maxprice ){
            maxprice = book.price;
        }
        
    }
    
    return maxprice;
}

- (CGFloat)meanPrice{
    int i = 0;
    int totalCost = 0;
    for(Book *book in _books){
        totalCost += book.price;
        i++;
    }
    if(i == 0) {
        return 0;
    }else{
        return (totalCost/i);
    }
}


- (NSUInteger)totalCost{
    int totalCost = 0;
    for(Book *book in _books){
        totalCost += book.price;
    }
    return totalCost;
}

- (void)saveChanges{
    
    
}

//Add five sample books
-(void)addSampleBooks{
    Book *book1 = [[Book alloc] initWithAuthor: @"J. K. Rowling" andTitle: @"Harry Potter" andPrice:15 andIsbn: @"abcd" andCourse: @"CIU196"];
    
    Book *book2 = [[Book alloc] initWithAuthor: @"Stephen King" andTitle: @"Under the Dome" andPrice:315 andIsbn: @"abcd" andCourse: @"CIU196"];
    
    Book *book3 = [[Book alloc] initWithAuthor: @"J. R. R: Tolkien" andTitle: @"Lord of the rings" andPrice:45 andIsbn: @"abcd" andCourse: @"CIU196"];
    
    Book *book4 = [[Book alloc] initWithAuthor: @"J. K. Rowling" andTitle: @"Prisoner of Azkaban" andPrice:25 andIsbn: @"abcd" andCourse: @"CIU196"];
    
    Book *book5 = [[Book alloc] initWithAuthor: @"J. K. Rowling" andTitle: @"Philosopher's stone" andPrice:5 andIsbn: @"abcd" andCourse: @"CIU196"];
    [_books addObject:book1];
    [_books addObject:book2];
    [_books addObject:book3];
    [_books addObject:book4];
    [_books addObject:book5];
    
}

@end


