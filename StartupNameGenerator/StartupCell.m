//
//  StartupCell.m
//  StartupNameGenerator
//
//  Created by Silas Reis on 16/07/17.
//  Copyright © 2017 Agendor. All rights reserved.
//

#import "StartupCell.h"

@implementation StartupCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) configureCell:(History *)history{
    self.history = history;
    
    self.titleLabel.text = history.startupName;
    [self updateFavoriteButton];
}

- (void) updateFavoriteButton {
    NSString *imageName = self.history.isFavorite ? @"isFavorite" : @"favorite";
    [self.favoriteButton setImage:[UIImage imageNamed: imageName] forState: UIControlStateNormal];
}

- (void) isFavoriteChanged{
    
    [self updateFavoriteButton];
    [self.delegate historyFavoriteChanged: self.history];
}

- (IBAction)favoriteButtonTapped:(UIButton *)sender {
    NSLog(@"tocou no botão");
    
    self.history.isFavorite = !self.history.isFavorite;
    
    [self isFavoriteChanged];
}
@end
