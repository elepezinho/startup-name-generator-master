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
    
    self.isFavorite = false;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) isFavoriteChanged{
    NSString *imageName = self.isFavorite ? @"isFavorite" : @"favorite";
    [self.favoriteButton setImage:[UIImage imageNamed: imageName] forState: UIControlStateNormal];
}

- (IBAction)favoriteButtonTapped:(UIButton *)sender {
    NSLog(@"tocou no botão");
    
    self.isFavorite = !self.isFavorite;
    
    [self isFavoriteChanged];
}
@end
