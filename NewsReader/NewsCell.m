//
//  NewsCell.m
//  NewsReader
//
//  Created by Marian PAUL on 23/03/12.
//  Copyright (c) 2012 iPuP SARL. All rights reserved.
//

#import "NewsCell.h"

@implementation NewsCell
@synthesize publicationDateLabel, authorLabel, titleLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
