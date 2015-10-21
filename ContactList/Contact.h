//
//  Contact.h
//  ContactList
//
//  Created by Steele on 2015-10-20.
//  Copyright © 2015 Steele. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property(strong, nonatomic) NSString *name;
@property(strong, nonatomic) NSString *email;

- (instancetype)initContactWithName: (NSString *)name email:(NSString *)email;


@end
