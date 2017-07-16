//
//  StartupCell.h
//  StartupNameGenerator
//
//  Created by Silas Reis on 16/07/17.
//  Copyright © 2017 Agendor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StartupCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;


@property (weak, nonatomic) IBOutlet UIButton *favoriteButton;

@property (assign) BOOL isFavorite;

- (IBAction)favoriteButtonTapped:(UIButton *)sender;

@end
