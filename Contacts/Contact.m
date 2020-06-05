//
//  Contact.m
//  Contacts
//
//  Created by Akinn Rosa on 31/05/20.
//  Copyright © 2020 Akinn Rosa. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (NSString *) description {
    NSString *dados = [NSString stringWithFormat:@"Nome: %@", self.nome];
    return dados;
}

@end
