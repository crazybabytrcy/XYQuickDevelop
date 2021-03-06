//
//  BlackMagicVC.m
//  JoinShow
//
//  Created by Heaven on 14/11/14.
//  Copyright (c) 2014年 Heaven. All rights reserved.
//

#import "BlackMagicVC.h"
#import "XYBlackMagic.h"

@interface BlackMagicVC ()

@end

@implementation BlackMagicVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.items = @[
                   @{@"title":@"BM_ON_EXIT", @"sel" : @"clickBM_ON_EXIT"}
                   ];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"test_cell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.items.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"test_cell" forIndexPath:indexPath];
    
    // Configure the cell...
    NSDictionary *dic = self.items[indexPath.row];
    cell.textLabel.text = dic[@"title"];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary *dic = self.items[indexPath.row];
    NSString *str = dic[@"sel"];
    SEL sel = NSSelectorFromString(str);
    if ([self respondsToSelector:sel]) {
        [self performSelector:sel];
    }
}

#pragma mark -方法的实现

-(void)clickBM_ON_EXIT
{
    BM_ON_EXIT {
        NSLog(@"这里的代码会在当前域结束的时候调用");
    };
    
    NSLog(@"1");
}

@end






