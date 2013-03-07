#import "SecondViewController.h"
#import <ViewDeck/IIViewDeckController.h>

@interface SecondViewController ()

@end

@implementation SecondViewController

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
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
	// Do any additional setup after loading the view.
}

- (IBAction)revealSidebar:(UIBarButtonItem *)sender {
    // Open menu
    [self.viewDeckController toggleLeftViewAnimated:YES];
}

@end
