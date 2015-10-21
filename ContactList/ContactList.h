//
//  ContactList.h
//  ContactList
//
//  Created by Steele on 2015-10-20.
//  Copyright © 2015 Steele. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

-(id)init;

-(void)addContact:(Contact *)newContact;
-(void)printContacts:(ContactList *)contactList;

@end
