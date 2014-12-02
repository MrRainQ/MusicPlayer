//
//  ViewController.m
//  asda
//
//  Created by sen5labs on 14-11-13.
//  Copyright (c) 2014年 sen5labs. All rights reserved.
//

#import "MusicListController.h"
#import "RPMusic.h"
#import "MusicCell.h"
#import "MJExtension.h"


@interface MusicListController ()
@property (nonatomic,strong) NSArray *musics;

@end

@implementation MusicListController

#pragma mark - 加载数据
- (NSArray *)musics
{
    if (_musics == nil) {
        _musics = [RPMusic objectArrayWithFilename:@"Musics.plist"];
    }
    
    return _musics;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.rowHeight = 70;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.musics.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MusicCell *cell = [MusicCell cellWithTableView:tableView];
    RPMusic *music = self.musics[indexPath.row];
    cell.music = music;
    
    //    cell.textLabel.text = music.name;
    //    cell.detailTextLabel.text = music.singer;
    
    return cell;
}

@end
