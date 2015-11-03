//
//  WebViewViewController.h
//  Sample
//
//  Created by James.hu on 10/29/15.
//  Copyright © 2015 James.hu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelNext;
@property (weak, nonatomic) IBOutlet UIButton *btnNext;
- (IBAction)btnNextClicked:(id)sender;
@property (strong, nonatomic) NSString* url;
@end
