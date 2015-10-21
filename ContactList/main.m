//
//  main.m
//  ContactList
//
//  Created by Steele on 2015-10-20.
//  Copyright © 2015 Steele. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputCollector *consoleInput = [[InputCollector alloc] init];
        NSString *inputData;
        ContactList *contactList = [[ContactList alloc] init];
        
        while (![inputData isEqualToString:@"quit"]) {
            
            NSLog(@"Contacts List Main Menu\n Options\n");
            NSLog (@"What would you like do next?\n new - Create a new contact\n list - List all contacts\n quit - Exit Application > _");
            inputData = [consoleInput inputForPrompt:@"Enter a command:"];
            
            if ([inputData isEqualToString:@"new"]) {
                
                NSLog(@"New Contact\n");
                NSString *user = [consoleInput inputForPrompt:@"Enter a name:"];
                NSString *email = [consoleInput inputForPrompt:@"Enter a email:"];
                
                Contact *contact = [[Contact alloc] initContactWithName:user email:email];
                
                [contactList addContact:contact];
                
            }
            else if ([inputData isEqualToString:@"list"]) {
                
               [contactList printContacts:contactList];
                
            }

            
        }
        
        
    }
    return 0;
}
