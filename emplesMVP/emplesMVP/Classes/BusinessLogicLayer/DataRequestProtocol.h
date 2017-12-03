//
//  DataRequestProtocol.h
//  emplesMVC
//
//  Created by Vasily Popov on 10/28/17.
//  Copyright © 2017 Vasily Popov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DataRequestProtocol <NSObject>

-(void) requestToRead:(NSString *)fileName withResponseBlock:(ContentResponseBlock)block;
    
@end
