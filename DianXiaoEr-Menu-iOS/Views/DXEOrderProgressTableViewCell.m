//
//  DXEOrderProgressTableViewCell.m
//  DianXiaoEr-Menu-iOS
//
//  Created by Joe Shang on 9/24/14.
//  Copyright (c) 2014 Shang Chuanren. All rights reserved.
//

#import "DXEOrderProgressTableViewCell.h"

@implementation DXEOrderProgressTableViewCell

- (void)awakeFromNib
{
    self.contentView.backgroundColor = [[RNThemeManager sharedManager] colorForKey:@"BackgroundColor"];
    self.backgroundImageView.image = [[RNThemeManager sharedManager] imageForName:@"order_progress_cell_background.png"];
    self.backgroundImageView.backgroundColor = [[RNThemeManager sharedManager] colorForKey:@"Cell.BackgroundColor"];
    
    UIColor *highlightColor = [[RNThemeManager sharedManager] colorForKey:@"HighlightColor"];
    UIColor *normalColor = [[RNThemeManager sharedManager] colorForKey:@"NormalColor"];
    
    self.dishName.textColor = highlightColor;
    self.dishEnglishName.textColor = highlightColor;

    self.dishCount.textColor = normalColor;
    self.dishPrice.textColor = normalColor;
    self.dishTotalPrice.textColor = normalColor;
    
    self.state = DXEDishProgressTodo;
}

- (void)setState:(DXEDishProgress)cellState
{
    UIColor *highlightColor = [[RNThemeManager sharedManager] colorForKey:@"HighlightColor"];
    UIColor *darkenColor = [[RNThemeManager sharedManager] colorForKey:@"DarkenColor"];
    UIImage *lightPoint = [[RNThemeManager sharedManager] imageForName:@"order_progress_light_point.png"];
    UIImage *darkPoint = [[RNThemeManager sharedManager] imageForName:@"order_progress_dark_point.png"];
    
    switch (cellState) {
        case DXEDishProgressTodo:
        {
            self.todoTitle.textColor = highlightColor;
            self.todoPoint.image = lightPoint;
            self.doingTitle.textColor = darkenColor;
            self.doingLine.backgroundColor = darkenColor;
            self.doingPoint.image = darkPoint;
            self.doneTitle.textColor = darkenColor;
            self.doneLine.backgroundColor = darkenColor;
            self.donePoint.image = darkPoint;
            
            break;
        }
        case DXEDishProgressDoing:
        {
            self.todoTitle.textColor = highlightColor;
            self.todoPoint.image = lightPoint;
            self.doingTitle.textColor = highlightColor;
            self.doingLine.backgroundColor = highlightColor;
            self.doingPoint.image = lightPoint;
            self.doneTitle.textColor = darkenColor;
            self.doneLine.backgroundColor = darkenColor;
            self.donePoint.image = darkPoint;
            
            break;
        }
        case DXEDishProgressDone:
        {
            self.todoTitle.textColor = highlightColor;
            self.todoPoint.image = lightPoint;
            self.doingTitle.textColor = highlightColor;
            self.doingLine.backgroundColor = highlightColor;
            self.doingPoint.image = lightPoint;
            self.doneTitle.textColor = highlightColor;
            self.doneLine.backgroundColor = highlightColor;
            self.donePoint.image = lightPoint;
            
            break;
        }
        default:
            break;
    }
    
    _state = cellState;
}

@end
