/*
 * ----------------------------------------------------------------------------
 * "THE BOOZE-WARE LICENSE"
 * Simon Rice wrote this file. As long as you retain this notice you
 * can do whatever you want with this stuff. If we meet some day, and you think
 * this stuff is worth it, you can buy me an alcoholic beverage in return.
 *
 * Simon Rice
 * ----------------------------------------------------------------------------
 */

#import "InitialViewController.h"

@interface InitialViewController ()

@end

@implementation InitialViewController



- (id)initWithCoder:(NSCoder *)aDecoder
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    self = [super initWithCenterViewController:[storyboard instantiateViewControllerWithIdentifier:@"firstViewController"]
                            leftViewController:[storyboard instantiateViewControllerWithIdentifier:@"leftViewController"]];
    if (self) {
        
        // Put your settings for ViewDeck here
        self.openSlideAnimationDuration = 0.3f; // In seconds
        self.closeSlideAnimationDuration = 0.3f;
    }
    return self;
}

@end
