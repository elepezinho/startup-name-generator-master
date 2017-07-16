//
//  StartupCell.h
//  StartupNameGenerator
//
//  Created by Silas Reis on 16/07/17.
//  Copyright © 2017 Agendor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "History+CoreDataClass.h"

@protocol StartupCellDelegate <NSObject>

- (void) historyFavoriteChanged:(History *)history;

@end

@interface StartupCell : UITableViewCell

@property (weak, nonatomic) id <StartupCellDelegate> delegate;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIButton *favoriteButton;

@property(strong, nonatomic) History *history;

- (void) configureCell:(History *)history;

- (IBAction)favoriteButtonTapped:(UIButton *)sender;

@end
