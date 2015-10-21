//
//  Contact.m
//  ContactList
//
//  Created by Steele on 2015-10-20.
//  Copyright © 2015 Steele. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initContactWithName: (NSString *)name email:(NSString *)email {
    self = [super init];
    if (self) {
        
        self.name = name;
        self.email = email;
    }
    return self;
}

@end
