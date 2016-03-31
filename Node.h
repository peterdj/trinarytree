//
//  Node.h
//  TestApp
//
//  Created by Peter Hale on 3/31/16.
//  Copyright © 2016 Peter Hale. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property (atomic) NSUInteger value;

@property (nonatomic,strong) Node *leftNode;
@property (nonatomic,strong) Node *middleNode;
@property (nonatomic,strong) Node *rightNode;

-(id) initWithNumber:(NSUInteger)number;
-(void) insert:(NSUInteger)value;
-(Node *)findNode:(NSUInteger)number;
-(void) removeMe;


@end
