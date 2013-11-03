//
//  ToDoListAddToDoItemViewController.m
//  ToDoList
//
//  Created by Christopher Dumas on 11/1/13.
//  Copyright (c) 2013 Christopher Dumas. All rights reserved.
//

#import "ToDoListAddToDoItemViewController.h"

@interface ToDoListAddToDoItemViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;
@property (weak, nonatomic) IBOutlet UITextField *textField2;

@end

@implementation ToDoListAddToDoItemViewController
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if (sender != self.doneButton) return;
    if (self.textField.text.length > 0 && self.textField2.text.length > 0 ) {
        self.toDoItem = [[ToDoListToDoItem alloc] init];
        self.toDoItem.itemName = self.textField.text;
        self.toDoItem.itemDescription = self.textField2.text;
        self.toDoItem.completed = NO;
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
