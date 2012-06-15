//
//  NewsDetailViewController.m
//  NewsReader
//
//  Created by Marian PAUL on 23/03/12.
//  Copyright (c) 2012 iPuP SARL. All rights reserved.
//

#import "NewsDetailViewController.h"
#import "News.h"

@implementation NewsDetailViewController
@synthesize descriptionTextView = _descriptionTextView;
@synthesize news = _news;

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    _descriptionTextView.text = _news.newsDescription;
    self.title = _news.title;
}
@end
