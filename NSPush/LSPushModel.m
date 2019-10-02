//
//  LSPushModel.m
//  NSPush
//
//  Created by Ivan IvanDavidAlmadaPerez on 10/1/19.
//  Copyright © 2019 Ivan IvanDavidAlmadaPerez. All rights reserved.
//

#import "LSPushModel.h"

@implementation LSPushModel

- (id)pushDictionary {

  NSBundle *main = [NSBundle mainBundle];

  NSURL *url = [main URLForResource:@"push" withExtension:@"json"];

  NSData *data = [NSData dataWithContentsOfURL:url];

  id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];

  NSLog(@"%@", json);

  return json;
}

@end
