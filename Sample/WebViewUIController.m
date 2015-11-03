//
//  WebViewUIController.m
//  Sample
//
//  Created by James.hu on 10/29/15.
//  Copyright © 2015 James.hu. All rights reserved.
//

#import "WebViewUIController.h"

@implementation WebViewUIController
//@synthesize url;

-(void)viewWillAppear:(BOOL)animated {
    
}

-(void)viewDidLoad{
    NSURLRequest* request = [[NSURLRequest new] initWithURL: [NSURL URLWithString:self.url]];
    [self.webview loadRequest:request];
}
@end
