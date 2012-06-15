//
//  NewsDetailViewController.h
//  NewsReader
//
//  Created by Marian PAUL on 23/03/12.
//  Copyright (c) 2012 iPuP SARL. All rights reserved.
//

#import <UIKit/UIKit.h>
@class  News;
@interface NewsDetailViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextView *descriptionTextView;
@property (strong, nonatomic) News *news;
@end
