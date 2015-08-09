//
//  ViewController.m
//  AllianceATE
//
//  Created by Justin Warmkessel on 8/9/15.
//  Copyright (c) 2015 Justin Warmkessel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController()

@property (nonatomic, strong) NSArray* numbers;
@property (nonatomic, strong) NSArray* numberCodes;

@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (CGFloat)tableView:(NSTableView *)tableView heightOfRow:(NSInteger)row
{
    return 100;
}

//- (NSView *)tableView:(NSTableView *)tableView
//   viewForTableColumn:(NSTableColumn *)tableColumn
//                  row:(NSInteger)row
//{
//    NSRect frameRect = NSMakeRect(0.0, 0.0, 1000.0, 1000.0);
//    NSView* someView = [[NSView alloc] initWithFrame:frameRect];
//
//    someView.layer.backgroundColor = [NSColor greenColor].CGColor;
//    
//    return someView;
//}

#pragma mark - Custom Initialisers

- (NSArray *)numbers {
    
    if (!_numbers) {
        _numbers = @[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10"];
    }
    return _numbers;
}

- (NSArray *)numberCodes {
    
    if (!_numberCodes) {
        _numberCodes = @[@"One", @"Two", @"Three", @"Four", @"Five", @"Six", @"Seven", @"Eight", @"Nine", @"Ten"];
    }
    return _numberCodes;
}


#pragma mark - Table View Data Source

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    
    // how many rows do we have here?
    return self.numbers.count;
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    
    // populate each row of our table view with data
    // display a different value depending on each column (as identified in XIB)
    
    if ([tableColumn.identifier isEqualToString:@"numbers"]) {
        
        // first colum (numbers)
        return [self.numbers objectAtIndex:row];
        
    } else {
        
        // second column (numberCodes)
        return [self.numberCodes objectAtIndex:row];
    }
}

@end
