//
//  ViewController.h
//  Sample
//
//  Created by James.hu on 10/28/15.
//  Copyright © 2015 James.hu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)btn_click:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel* label;
@property (weak, nonatomic) IBOutlet UIImageView* image;
@property (weak, nonatomic) IBOutlet UIButton* button;

@property (weak, nonatomic) IBOutlet UIButton *urlBtn;
- (IBAction)url_click:(id)sender;

@end

