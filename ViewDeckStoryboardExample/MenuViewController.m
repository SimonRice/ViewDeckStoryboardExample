/*
 * ----------------------------------------------------------------------------
 * "THE BOOZE-WARE LICENSE"
 * Simon Rice wrote this file. As long as you retain this notice you
 * can do whatever you want with this stuff. If we meet some day, and you think
 * this stuff is worth it, you can buy me an alcoholic beverage in return.
 *
 * Mikael Bolle
 * ----------------------------------------------------------------------------
 */


#import "MenuViewController.h"
#import <ViewDeck/IIViewDeckController.h>

@interface MenuViewController ()

@end


@implementation MenuViewController

@synthesize firstview;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    /*Change view*/
    switch (indexPath.row) {
        case 0:
        {
            // This way we save the state of the navigation controller
            if (!self.firstview) {
                self.firstview = (UINavigationController*) [self.storyboard instantiateViewControllerWithIdentifier:@"firstViewController"];
            }
            
            [self.viewDeckController setCenterController:self.firstview];
            [self.viewDeckController closeLeftViewAnimated:YES];

            break;
        }
        case 1:
        {
            // Add a closing bounce effect
            // Will create a new instance of the navigation controller each time it is called
            [self.viewDeckController closeLeftViewBouncing:^(IIViewDeckController *controller) {
                controller.closeSlideAnimationDuration = 0.1f;
                controller.openSlideAnimationDuration = 0.2f;
                [controller setCenterController:[self.storyboard instantiateViewControllerWithIdentifier:@"secondViewController"]];
            }];
            break;
        }
    }
}

@end
