//
//  NewsCell.h
//  NewsReader
//
//  Created by Marian PAUL on 23/03/12.
//  Copyright (c) 2012 iPuP SARL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewsCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *publicationDateLabel;
@property (strong, nonatomic) IBOutlet UILabel *authorLabel;
@end
