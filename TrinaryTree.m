//
//  TrinaryTree.m
//  TestApp
//
//  Created by Peter Hale on 3/31/16.
//  Copyright © 2016 Peter Hale. All rights reserved.
//

#import "TrinaryTree.h"

@implementation TrinaryTree

-(void) insertNode:(NSUInteger)number {
    if ( _rootNode == nil ) {
        self.rootNode = [[Node alloc] initWithNumber:number];
    } else {
        [_rootNode insert:number];
    }
}

-(BOOL) deleteNode:(NSUInteger)number {
    Node *node = [_rootNode findNode:number];
    if ( node != nil ) {
        [node removeMe];
        return YES;
    }
    return NO;
}

@end
