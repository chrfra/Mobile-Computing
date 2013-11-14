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
        
        Book *book1 = [[Book alloc] initWithAuthor: @"J. K. Rowling" andTitle: @"Harry Potter" andPrice:15 andIsbn: @"abcd" andCourse: @"CIU196"];

        Book *book2 = [[Book alloc] initWithAuthor: @"Stephen King" andTitle: @"Under the Dome" andPrice:315 andIsbn: @"abcd" andCourse: @"CIU196"];
        
        Book *book3 = [[Book alloc] initWithAuthor: @"J. R. R: Tolkien" andTitle: @"Lord of the rings" andPrice:45 andIsbn: @"abcd" andCourse: @"CIU196"];
        
        Book *book4 = [[Book alloc] initWithAuthor: @"J. K. Rowling" andTitle: @"Prisoner of Azkaban" andPrice:25 andIsbn: @"abcd" andCourse: @"CIU196"];
        
        Book *book5 = [[Book alloc] initWithAuthor: @"J. K. Rowling" andTitle: @"Philosopher's stone" andPrice:5 andIsbn: @"abcd" andCourse: @"CIU196"];

        self.books = [NSMutableArray arrayWithObjects: book1, book2, book3, book4, book5, nil];

    }
    return self;
    
}

- (NSUInteger)count {
    
    return 5;

}


- (Book *)bookAtIndex:(NSUInteger)index;{
    
    return [_books objectAtIndex: index];
     



}

- (Book *)createBook{
    Book *book7 = [[Book alloc] initWithAuthor: @"J. K. Rowling" andTitle: @"My book" andPrice:15 andIsbn: @"abcd" andCourse: @"Mobile computing"];
    [_books addObject:book7];
    
    return book7;
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



@end


