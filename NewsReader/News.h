//
//  News.h
//  NewsReader
//
//  Created by Marian PAUL on 23/03/12.
//  Copyright (c) 2012 iPuP SARL. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface News : NSObject
@property (copy, nonatomic) NSString *title;
@property (copy, nonatomic) NSString *newsDescription;
@property (copy, nonatomic) NSString *author;
@property (strong, nonatomic) NSDate *publicationDate;
@property (assign, nonatomic) BOOL alreadyRead;
@end
