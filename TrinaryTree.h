//
//  TrinaryTree.h
//  TestApp
//
//  Created by Peter Hale on 3/31/16.
//  Copyright © 2016 Peter Hale. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface TrinaryTree : NSObject

@property (nonatomic,strong) Node *rootNode;

-(void) insertNode:(NSUInteger)number;
-(BOOL) deleteNode:(NSUInteger)number;

@end
