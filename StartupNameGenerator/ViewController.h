//
//  ViewController.h
//  StartupNameGenerator
//
//  Created by Marcelo Moscone on 4/25/17.
//  Copyright © 2017 Agendor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "StartupCell.h"

@interface ViewController : UIViewController<UITableViewDataSource, NSFetchedResultsControllerDelegate,StartupCellDelegate>

@property (weak, nonatomic) IBOutlet UITextField *inputTextField;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

