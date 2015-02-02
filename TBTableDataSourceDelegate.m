//
//  TBTableDataSourceDelegate.m
//  TeamplateProject
//
//  Created by thuydd on 2/2/15.
//  Copyright (c) 2015 QsoftVietNam. All rights reserved.
//

#import "TBTableDataSourceDelegate.h"

@implementation TBTableDataSourceDelegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dataSource count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 40;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [UITableViewCell new];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    @try {
        self.tableViewCellDidSelectedBlock(indexPath.row);
    }@catch (NSException *exception)
    {
        return;
    }
}

@end
