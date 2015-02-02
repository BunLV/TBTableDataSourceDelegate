//
//  TBTableDataSourceDelegate.h
//  TeamplateProject
//
//  Created by thuydd on 2/2/15.
//  Copyright (c) 2015 QsoftVietNam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TBTableDataSourceDelegate : NSObject <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, retain) NSMutableArray *dataSource;
@property (nonatomic, copy) void(^tableViewCellDidSelectedBlock)(NSInteger index);

@end
