//
//  CMViewController.h
//  CMWebGLSafari
//
//  Created by Juwan Yoo on 12. 7. 22..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CMViewController : UIViewController <UITextFieldDelegate, UIWebViewDelegate>

@property (nonatomic, retain) IBOutlet UITextField *urlTextField;
@property (nonatomic, retain) IBOutlet UIWebView *webView;

@end
