//
//  ViewController.m
//  YouEyeViewFunHouseRedux
//
///  Created by Umut Kanbak on 7/10/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    
    ///math things
    __strong IBOutlet UITextField * firstNumberBox;
    __strong IBOutlet UITextField * secondNumberBox;
    __strong IBOutlet UILabel * answerBox;
    __strong IBOutlet UILabel * plusLabel;
    __strong IBOutlet UILabel * equalLabel;
    __strong IBOutlet UIButton * answerButtonObject;
    
    ///slider
    __strong IBOutlet UISlider * sliderObject;
    __strong IBOutlet UILabel * sliderLabel;
    
    
    ///on off button that changes color of button and changes image
    //on off button
    __strong IBOutlet UIButton * everythingButton;
    
    //imageviewer
    __strong IBOutlet UIImageView * imageViewer;
    __strong IBOutlet UIImage * colorImage;
    __strong IBOutlet UIImage * bWImage;
    
}

- (IBAction) answerButton:(id)sender;
- (IBAction) everythingButtonMethod: (id) sender;
- (IBAction) sliderAction: (id) sender;




@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    ///math
    plusLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 20, 20)];
    plusLabel.text = @"+";
    [self.view addSubview:plusLabel ];
    
    equalLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 50, 20, 20)];
    equalLabel.text = @"=";
    [self.view addSubview:equalLabel ];
    
    answerBox = [[UILabel alloc] initWithFrame:CGRectMake(200, 50, 100, 20)];
    answerBox.text = @"tbd";
    [self.view addSubview:answerBox ];
    
    firstNumberBox = [[UITextField alloc] initWithFrame:CGRectMake(25, 50, 20, 20)];
    firstNumberBox.backgroundColor = [UIColor whiteColor];
    firstNumberBox.placeholder = @"placeholder";
    [self.view addSubview:firstNumberBox ];
    
    secondNumberBox = [[UITextField alloc] initWithFrame:CGRectMake(75, 50, 20, 20)];
    secondNumberBox.backgroundColor = [UIColor whiteColor];
    secondNumberBox.placeholder = @"placeholder";
    [self.view addSubview:secondNumberBox ];
    
    
    answerButtonObject = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    answerButtonObject.frame = CGRectMake(125, 40, 50, 50);
    [answerButtonObject setTitle:@"Click" forState:UIControlStateNormal];
    [self.view addSubview:answerButtonObject ];
    
    [answerButtonObject addTarget:self action:@selector(answerButton:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    //slider
    sliderObject = [[UISlider alloc] initWithFrame:CGRectMake(25, 100, 150, 50)];
    [self.view addSubview:sliderObject ];
    [sliderObject addTarget:self action:@selector(sliderAction:) forControlEvents: UIControlEventAllTouchEvents];
    
    sliderLabel = [[UILabel alloc] initWithFrame:CGRectMake(190, 100, 75, 25)];
    sliderLabel.text = @"TBD";
    [self.view addSubview:sliderLabel];
    
    //everything button
    
    
    everythingButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    everythingButton.frame = CGRectMake(40, 160, 250, 100);
    [everythingButton setTitle:@"EVERYTHING BUTTON IS ON" forState:UIControlStateNormal];
    [everythingButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    
    [self.view addSubview:everythingButton ];
    
    ///button functionality
    [everythingButton addTarget:self action:@selector(everythingButtonMethod:) forControlEvents:UIControlEventTouchUpInside];
    
    imageViewer = [[UIImageView alloc] initWithFrame: CGRectMake( 50,300,150,150)];
    [self.view addSubview:imageViewer ];
    
    colorImage = [UIImage imageNamed: @"MMLogoColor.png"];
    bWImage = [UIImage imageNamed: @"MMLogoBW.png"];
    
    
    [imageViewer setImage: colorImage];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction) everythingButtonMethod: (id) sender
{
    NSLog(@"button");
    if (imageViewer.image == bWImage)
    {
        [imageViewer setImage:colorImage];
        [everythingButton setTitle:@"EVERYTHING BUTTON IS ON" forState:UIControlStateNormal];
        [everythingButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        
    }
    else
    {
        [imageViewer setImage:bWImage];
        [everythingButton setTitle:@"EVERYTHING BUTTON IS OFF" forState:UIControlStateNormal];
        [everythingButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    }
}

- (IBAction) sliderAction: (id) sender

{
    sliderLabel.text = [NSString stringWithFormat:@"%f", sliderObject.value];
}

- (IBAction) answerButton:(id)sender
{
    answerBox.text = [NSString stringWithFormat:@"%i", [firstNumberBox.text intValue] + [secondNumberBox.text intValue]];
    [self.view endEditing:YES];
    
}






@end