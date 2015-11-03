//
//  TabViewViewController.m
//  Sample
//
//  Created by James.hu on 10/30/15.
//  Copyright © 2015 James.hu. All rights reserved.
//

#import "TabViewViewController.h"

@interface TabViewViewController () <UITableViewDelegate, UITableViewDataSource, UIAlertViewDelegate>

@end

@implementation TabViewViewController

@synthesize tabview;

NSArray* data;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //NSDictionary* tabviewDic = [[NSDictionary alloc]init];
    //NSMutableDictionary* tableviewDic = [[NSMutableDictionary alloc]init];
    //[tableviewDic setObject:@"keykey" forKey:@"key"];
    //[self.tabview setValuesForKeysWithDictionary:tableviewDic];
    data = [NSArray arrayWithObjects:@"hudameng", @"huxiaomeng", @"maoxiaomeng", @"whatisthis" @"niuxx", @"aabccdd",nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [data count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString* tableId = @"tablecell";
    UITableViewCell* cell = [tabview dequeueReusableCellWithIdentifier:tableId];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableId];
    }
    cell.textLabel.text = [data objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:@"ic_add_content.png"];
    UIButton* button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(cell.frame.origin.x + 200, cell.frame.origin.y, 100, 30);
    button.backgroundColor = [UIColor blackColor];
    [button setTitle:@"New Button" forState:UIControlStateNormal];
    [button setTag: indexPath.row + 100];
    //get selector
    SEL btn = NSSelectorFromString(@"btnNav:");
    [button addTarget:self action:btn forControlEvents:UIControlEventTouchUpInside];
    [cell.contentView addSubview:button];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIAlertView* alert = [[UIAlertView alloc]initWithTitle:@"Refresh" message:@"Do you want to Refresh" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK",@"Done", nil];
    //clickEvent();
    [alert show];
}

-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath{
    
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"clickButtonAtIndex:%d", buttonIndex);
}


void (^clickEvent)(void) = ^{
    NSLog(@" Button Clicked !");
};

-(void)btnNav:(UIButton *)sender{
    NSLog(@" uibutton clicked = %d", sender.tag);
}

@end
