//
//  NewsTableViewController.m
//  NewsReader
//
//  Created by Marian PAUL on 23/03/12.
//  Copyright (c) 2012 iPuP SARL. All rights reserved.
//

#import "NewsTableViewController.h"
#import "News.h"
#import "NewsCell.h"
#import "NewsDetailViewController.h"

@interface NewsTableViewController ()

@end

@implementation NewsTableViewController
@synthesize arrayOfNews = _arrayOfNews;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.arrayOfNews = [NSMutableArray array];

    News *news = [[News alloc] init];
    news.title = @"Premier titre";
    news.newsDescription = @"Une superbe description";
    news.author = @"John D";
    news.publicationDate = [NSDate dateWithTimeIntervalSinceNow:-3600];
    [_arrayOfNews addObject:news];
    
    news = [[News alloc] init];
    news.title = @"Deuxième titre";
    news.newsDescription = @"Encore une superbe description";
    news.author = @"Robert P";
    news.publicationDate = [NSDate dateWithTimeIntervalSinceNow:-3600*10];
    [_arrayOfNews addObject:news];
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.arrayOfNews count];
}

static NSDateFormatter *df = nil;

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"NewsCell";
    NewsCell *cell = (NewsCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    News *news = (News*)[_arrayOfNews objectAtIndex:indexPath.row];
    cell.titleLabel.text = news.title;
    cell.authorLabel.text = news.author;
    
    if (!df) {
        df = [[NSDateFormatter alloc] init];
        [df setDateStyle:NSDateFormatterMediumStyle];
        [df setTimeStyle:NSDateFormatterShortStyle];
    }
    cell.publicationDateLabel.text = [df stringFromDate:news.publicationDate];
    
    if (news.alreadyRead)
        cell.titleLabel.alpha = cell.authorLabel.alpha = cell.publicationDateLabel.alpha = 0.5;
    else
        cell.titleLabel.alpha = cell.authorLabel.alpha = cell.publicationDateLabel.alpha = 1.0;
    
    return cell;
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    /*
     Lorsqu'une ligne est sélectionnée, le segue crée la vue de détail, comme étant la destination.
     C'est donc à ce moment là qu'il faut setter la propriété news du detail view controller pour l'afficher.
     */
    if ([[segue identifier] isEqualToString:@"ShowNewsDescription"]) {
        
        NSIndexPath *selectedRowIndex = [self.tableView indexPathForSelectedRow];
        NewsDetailViewController *detailViewController = [segue destinationViewController];
        News *news = [_arrayOfNews objectAtIndex:selectedRowIndex.row];
        news.alreadyRead = YES;
        detailViewController.news = news;
    }  
}

@end
