//
//  ViewController.m
//  Contacts
//
//  Created by Akinn Rosa on 31/05/20.
//  Copyright © 2020 Akinn Rosa. All rights reserved.
//

#import "ViewController.h"
#import "Contact.h"

@implementation ViewController

- (id)initWithCoder: (NSCoder *) aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        UIBarButtonItem *botao = [[UIBarButtonItem alloc] initWithTitle:@"Adicionar" style:UIBarButtonItemStylePlain target:self action:@selector(add)];
        self.navigationItem.rightBarButtonItem = botao;
        self.navigationItem.title = @"Novo Contato";
        self.dao = [ContactDao contactDaoInstance];
    }
    return self;
}

- (void) add {
    Contact *contact = [Contact new];
    
    contact.nome = self.nome.text;
    contact.endereco = self.endereco.text;
    contact.email = self.email.text;
    contact.telefone = self.telefone.text;
    contact.site = self.site.text;
    
    [self.dao addContact:contact];
    
    NSLog(@"%@", self.dao.contacts);
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
