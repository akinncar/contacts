//
//  ContactsListViewController.h
//  Contacts
//
//  Created by Akinn Rosa on 03/06/20.
//  Copyright © 2020 Akinn Rosa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContactDao.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactsListViewController : UITableViewController

@property ContactDao *dao;

@end

NS_ASSUME_NONNULL_END
