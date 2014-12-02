//
//  MusicCell.m
//  RPMusic
//
//  Created by sen5labs on 14-11-13.
//  Copyright (c) 2014年 sen5labs. All rights reserved.
//

#import "MusicCell.h"
#import "RPMusic.h"
#import "UIImage+MJ.h"
#import "Colours.h"

@implementation MusicCell

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"music";
    MusicCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[MusicCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    return cell;
}

- (void)setMusic:(RPMusic *)music
{
    _music = music;
    
    self.textLabel.text = music.name;
    self.detailTextLabel.text = music.singer;
    self.imageView.image = [UIImage circleImageWithName:music.singerIcon borderWidth:3 borderColor:[UIColor pinkColor]];
}

@end
