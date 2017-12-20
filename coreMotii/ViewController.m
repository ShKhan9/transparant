//
//  ViewController.m
//  coreMotii
//
//  Created by ShKhan on 12/12/17.
//  Copyright © 2017 Approcks. All rights reserved.
//

#import "ViewController.h"

#import <CoreMotion/CoreMotion.h>
#import <CoreData/CoreData.h>
#import "secViewController.h"
@interface ViewController ()
{
    
}
@property (nonatomic, strong) CMMotionManager *motionManager;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.navigationItem.title = @"First View";
    UIBarButtonItem *nextButton = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"next", nil)
                                                                   style:UIBarButtonItemStylePlain
                                                                  target:self
                                                                  action:@selector(touchUpNextButton:)];
    self.navigationItem.rightBarButtonItem = nextButton;
    
    
}


- (void)touchUpNextButton:(id)sender
{
    UIViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"secondView"];
    [self.navigationController pushViewController:vc animated:YES];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
