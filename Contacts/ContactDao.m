//
//  ContactDao.m
//  Contacts
//
//  Created by Akinn Rosa on 06/06/20.
//  Copyright © 2020 Akinn Rosa. All rights reserved.
//

#import "ContactDao.h"

@implementation ContactDao

static  ContactDao *defaultDao = nil;

- (id) init {
    self = [super init];
    if(self){
        self.contacts = [NSMutableArray new];
    }
    return self;
}

+ (ContactDao *) contactDaoInstance {
    if(!defaultDao) {
        defaultDao = [ContactDao new];
    }
    return defaultDao;
}

- (void) addContact:(Contact *)contact{
    [self.contacts addObject:contact];
}

- (NSInteger) total {
    return self.contacts.count;
};

- (Contact *) contactIndex: (NSInteger) index {
    return self.contacts[index];
}


@end
