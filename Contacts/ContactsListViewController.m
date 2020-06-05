//
//  ContactsListViewController.m
//  Contacts
//
//  Created by Akinn Rosa on 03/06/20.
//  Copyright © 2020 Akinn Rosa. All rights reserved.
//

#import "ContactsListViewController.h"
#import "ViewController.h"
#import "Contact.h"

@implementation ContactsListViewController

-(id) init {
    self = [super init];
    
    if (self) {
        UIBarButtonItem *botaoForm = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(exibeFormulario)];
        
        self.navigationItem.rightBarButtonItem = botaoForm;
        self.navigationItem.title = @"Contatos";
        self.contacts = [NSMutableArray new];
    }
    
    return self;
}

-(void) exibeFormulario {
//    ViewController *form = [ViewController new];
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *form = [storyBoard instantiateViewControllerWithIdentifier:@"Contact-Form"];
    
    form.contacts = self.contacts;
    
    [self.navigationController pushViewController:form animated:YES];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *identificador = @"Celula";
    
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:identificador];
    
    if(!cell) {
         cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identificador];
    }
    
    Contact *contact = self.contacts[indexPath.row];
    cell.textLabel.text = contact.nome;
    
    return cell;
}

- (void)viewWillAppear:(BOOL)animated {
    [self.tableView reloadData];
}

@end
