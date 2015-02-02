//
//  RecordObject.m
//  Sample
//
//  Created by wangkun on 15/2/1.
//  Copyright (c) 2015年 wangkun. All rights reserved.
//

#import "RecordObject.h"

@implementation RecordObject

- (void)dummyData
{
    self.user_id = @"1";
    self.user_name = @"user11";
    self.character_id = @"1";
    self.character_type = @"2";
    
    self.time_lp_on_character = @"180",
    self.time_lp_press = @"200",
    self.pressue_applied = @"300",
    self.position_x = @"10",
    self.postion_y = @"200",
    self.t_delay_press_character = @"11";
}

- (int)intValumeFromCharacter:(unichar)character
{
    character = character - 'A' + 1;
    NSNumber *number = [NSNumber numberWithUnsignedChar:character] ;
    return [number intValue];
}

- (int)characterType:(unichar)character
{
    if ([[NSMutableCharacterSet letterCharacterSet] characterIsMember:character])
    {
        //alphabet
        return 1;
    }
    else if ([[NSMutableCharacterSet decimalDigitCharacterSet] characterIsMember:character])
    {
        //number
        return 2;
    }
    else
    {
        //specail
        return 3;
    }
}

- (void)functionTest
{
    NSString *string = @"123EEFDaa%^#eqwe!#!@$#$^%^*&(XZXZCDwaqw[]}";
    
    for (int i = 0; i < [string length]; i++)
    {
        unichar character = [string characterAtIndex:i];
        NSLog(@"charac: %c : type: %d, id: %d",character, [self characterType:character], [self intValumeFromCharacter:character]);
    }
}
@end
