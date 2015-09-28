//
//  DetailViewController.h
//  UITestingDemo
//
//  Created by Serene IT on 29/09/2015.
//  Copyright © 2015 Serene IT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

