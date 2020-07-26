//
//  ViewController.m
//  App
//
//  Created by devmac02 on 7/23/20.
//  Copyright © 2020 prabha. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@property (weak, nonatomic) IBOutlet UITextField *txtUserName;
@property (weak, nonatomic) IBOutlet UITextField *txtPassword;

@end

@implementation LoginViewController

//MARK:- VIEW DELEGATES
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


//MARK:-BUTTON ACTIONS
- (IBAction)btnLoginClicked:(id)sender {

    NSString *email = _txtUserName.text;
    if([email isEqualToString:@""])
    {
        NSString *msg = [email isEqualToString:@""] ? @"Please enter email" : @"Please enter valid email";
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Message" message:msg preferredStyle:UIAlertControllerStyleAlert];

        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [self.txtUserName becomeFirstResponder];
        }];
        
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
        return;
    }
    
    if(self.txtPassword.text.length == 0)
    {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Message" message:@"Please enter password" preferredStyle:UIAlertControllerStyleAlert];

        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [self.txtPassword becomeFirstResponder];
        }];
        
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
        return;
    }
    
}


//MARK:- ACTIONS UITEXTFEILD DELEGATE

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if(textField == self.txtUserName)
    {
        [textField resignFirstResponder];
        [self.txtPassword becomeFirstResponder];
    }
    else
    {
        [textField resignFirstResponder];
    }
    
    return true;
}


- (void)textFieldDidEndEditing:(UITextField *)textField
{
    

}


@end
