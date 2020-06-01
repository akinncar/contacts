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

-(IBAction) add {
    Contact *contact = [Contact new];
    
    contact.nome = self.nome.text;
    contact.endereco = self.endereco.text;
    contact.email = self.email.text;
    contact.telefone = self.telefone.text;
    contact.site = self.site.text;
    
    NSLog(@"Clicou no botão %@ %@ %@ %@ %@", contact.nome, contact.endereco, contact.email, contact.telefone, contact.site);
}

@end
