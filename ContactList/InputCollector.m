//
//  InputCollector.m
//  ContactList
//
//  Created by Steele on 2015-10-20.
//  Copyright © 2015 Steele. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector



-(NSString *)inputForPrompt:(NSString *)promptString {
    
    //255 unit long array of characters
    char inputChars[255];
    
    NSLog(@"\n%@",promptString);
    //printf(promptString);
    
    //limit input to max 255 characters
    fgets(inputChars, 255, stdin);
    
    // convert char array to an NSString object
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
    inputString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    return inputString;
    
}

@end
