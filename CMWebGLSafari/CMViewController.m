//
//  CMViewController.m
//  CMWebGLSafari
//
//  Created by Juwan Yoo on 12. 7. 22..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "CMViewController.h"

@interface CMViewController ()

@end

@implementation CMViewController

@synthesize urlTextField = _urlTextField;
@synthesize webView = _webView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [_urlTextField setReturnKeyType:UIReturnKeyGo];
    [[[_webView performSelector:@selector(_browserView)] performSelector:@selector(webView)] _setWebGLEnabled:YES];
    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://code.google.com/p/webglsamples/"]]];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[textField text]]]];
    [textField resignFirstResponder];
    return NO;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [_urlTextField setText:[[[webView request] URL] absoluteString]];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
