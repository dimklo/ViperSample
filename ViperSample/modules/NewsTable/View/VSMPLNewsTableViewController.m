//
//  VSMPLchild1ViewController.m
//  ViperSample
//
//  Created by dmitry on 17/01/2018.
//  Copyright © 2018 dmitryklochkov. All rights reserved.
//

#import "VSMPLNewsTableViewController.h"

#import "VSMPLNewsTableViewOutput.h"
#import "VSMPLNews.h"
#import "VSMPLNewsTableDataSource.h"
#import "VSMPLNewsTableCellDecorator.h"

@implementation VSMPLNewsTableViewController


#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
    
	[super viewDidLoad];
    
    
    
    
	[self.output didTriggerViewReadyEvent];
}

#pragma mark - Методы VSMPLchild1ViewInput

- (void)setupInitialState {
	// В этом методе происходит настройка параметров view, зависящих от ее жизненого цикла (создание элементов, анимации и пр.)
}

-(void)setEditing:(BOOL)editing {
    [self setEditing:editing animated:true];
}


-(void)viewWillAppear:(BOOL)animated {
    [self.tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.output.tableDatasource newsCount];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"NewsTableCell" forIndexPath:indexPath];
    
    id<VSMPLNews> news = [self.output.tableDatasource getNewsForRow:indexPath.row];
    
    [self.tableCellDecorator decorateCell:cell withNews:news];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.output didTappedOnNewsTableCellWithRow:indexPath.row];
}

-(void)newsFilterValuesDidChange {
    [self.tableView reloadData];
}

-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UITableViewCellEditingStyleNone;
}






@end
