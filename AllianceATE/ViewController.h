//
//  ViewController.h
//  AllianceATE
//
//  Created by Justin Warmkessel on 8/9/15.
//  Copyright (c) 2015 Justin Warmkessel. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController <NSTableViewDelegate, NSTableViewDataSource>

@property (weak) IBOutlet NSTableView* tableView;
@property (nonatomic, strong) NSMutableArray* data;
- (IBAction)startServer:(id)sender;

@end

