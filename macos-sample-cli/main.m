//
//  main.m
//  macos-sample-cli
//
//  Created by Vladimir Safonkin on 10/26/19.
//  Copyright © 2019 Vladimir Safonkin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject
-(void)setName:(int) n;
-(void)sayHello;
+(void)sayGoodbye;
@end

@implementation User {
    int name;
}

-(void)setName:(int)n {
    name = n;
}

-(void)sayHello {
    NSLog(@"Hello, %i",name);
}

+(void)sayGoodbye {
    NSLog(@"Goodbye!");
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        User *mUser;
        mUser = [[User alloc] init];
        
        [mUser setName:123];
        [mUser sayHello];
        [User sayGoodbye];
    }
    return 0;
}
