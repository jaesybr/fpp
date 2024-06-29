#import <UIKit/UIKit.h>

@interface ModMenuViewController : UIViewController
@end

@implementation ModMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *option1Button = [UIButton buttonWithType:UIButtonTypeSystem];
    [option1Button setTitle:@"Option 1" forState:UIControlStateNormal];
    option1Button.frame = CGRectMake(50, 50, 200, 50);
    [option1Button addTarget:self action:@selector(option1Tapped) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:option1Button];
    
    UIButton *option2Button = [UIButton buttonWithType:UIButtonTypeSystem];
    [option2Button setTitle:@"Option 2" forState:UIControlStateNormal];
    option2Button.frame = CGRectMake(50, 150, 200, 50);
    [option2Button addTarget:self action:@selector(option2Tapped) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:option2Button];
}

- (void)option1Tapped {
    NSLog(@"Option 1 selected");
}

- (void)option2Tapped {
    NSLog(@"Option 2 selected");
}

@end

%hook YourTargetClass

- (void)someMethod {
    %orig;
    
    ModMenuViewController *modMenu = [[ModMenuViewController alloc] init];
    [self presentViewController:modMenu animated:YES completion:nil];
}

%end