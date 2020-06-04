//
//  ContactsListViewController.m
//  Contacts
//
//  Created by Akinn Rosa on 03/06/20.
//  Copyright © 2020 Akinn Rosa. All rights reserved.
//

#import "ContactsListViewController.h"
#import "ViewController.h"

@implementation ContactsListViewController

-(id) init {
    self = [super init];
    
    UIBarButtonItem *botaoForm = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(exibeFormulario)];
    
    self.navigationItem.rightBarButtonItem = botaoForm;
    self.navigationItem.title = @"Contatos";
    
    return self;
}

-(void) exibeFormulario {
//    ViewController *form = [ViewController new];
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *form = [storyBoard instantiateViewControllerWithIdentifier:@"Contact-Form"];
    [self.navigationController pushViewController:form animated:YES];
}

@end
