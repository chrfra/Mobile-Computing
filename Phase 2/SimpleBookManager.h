//
//  SimpleBookManager.h
//  Task1
//
//  Created by Satu Peltola on 02/11/13.
//  Copyright (c) 2013 Satu Peltola. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BookManagerProtocol.h"

@interface SimpleBookManager : NSObject <BookManagerProtocol>

@property(strong) NSMutableArray * books;



@end

