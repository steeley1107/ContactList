//
//  ContactList.m
//  ContactList
//
//  Created by Steele on 2015-10-20.
//  Copyright © 2015 Steele. All rights reserved.
//

#import "ContactList.h"

@interface ContactList()

@property (nonatomic, strong) NSMutableArray *mutableArray;

@end

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.mutableArray = [[NSMutableArray alloc] init] ;
    }
    return self;
}

-(void)addContact:(Contact *)newContact {
    [self.mutableArray addObject:newContact];
}

-(void)printContacts:(ContactList *)contactList {
    int i = 0;
    for (Contact *contacts in contactList.mutableArray) {
        NSLog(@"%d: <%@> %@", i,contacts.name,contacts.email);
        i++;
    }
}


@end

