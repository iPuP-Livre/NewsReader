//
//  PreferencesTableViewController.h
//  NewsReader
//
//  Created by Marian PAUL on 23/03/12.
//  Copyright (c) 2012 iPuP SARL. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kPseudo @"pseudo"
#define kDownloadAuto @"downloadAuto"
#define kTextSize @"textSize"

@interface PreferencesTableViewController : UITableViewController <UITextFieldDelegate>
{
    IBOutlet UITextField *_pseudoTextField;
    IBOutlet UISwitch *_switchDownloadAuto;
    IBOutlet UISlider *_sliderTextSize;
    IBOutlet UILabel *_labelVersion;
}

- (IBAction)valueDidChanged:(id)sender;

@end
