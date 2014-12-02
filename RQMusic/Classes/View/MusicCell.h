//
//  MusicCell.h
//  RPMusic
//
//  Created by sen5labs on 14-11-13.
//  Copyright (c) 2014年 sen5labs. All rights reserved.
//

#import <UIKit/UIKit.h>
@class RPMusic;
@interface MusicCell : UITableViewCell

@property (nonatomic, strong) RPMusic *music;

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end
