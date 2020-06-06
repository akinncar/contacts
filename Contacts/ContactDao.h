//
//  ContactDao.h
//  Contacts
//
//  Created by Akinn Rosa on 06/06/20.
//  Copyright © 2020 Akinn Rosa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactDao : NSObject

@property NSMutableArray *contacts;

- (void) addContact: (Contact *) contact;
- (NSInteger) total;
- (Contact *) contactIndex: (NSInteger) index;
+ (ContactDao *) contactDaoInstance;


@end

NS_ASSUME_NONNULL_END
