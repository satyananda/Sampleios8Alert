//
//  ViewController.m
//  Sampleios8Alert
//
//  Created by Satyanand on 1/8/15.
//  Copyright (c) 2015 prokarma. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonClicked:(id)sender {
    
    if ((int)((UIButton*)sender).tag == 10) {
        
        //AlertController
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Title" message:@"Message" preferredStyle:UIAlertControllerStyleAlert];
        
        //Buttons Creation
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK"
                                                           style:UIAlertActionStyleDefault
                                                         handler:^(UIAlertAction *action){
                                                             //Write what action to be performed on OK
                                                        
                                                         }];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel"
                                                               style:UIAlertActionStyleCancel
                                                             handler:^(UIAlertAction *action){
                                                             //Write Cancel Action
                                                                 
                                                             }];
        
        //Add Buttons
        [alert addAction:okAction];
        [alert addAction:cancelAction];
        
        //Show Alert
        [self presentViewController:alert animated:YES completion:nil];
        
    }
    else if((int)((UIButton*)sender).tag == 11){
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil
                                                                       message:nil
                                                                preferredStyle:UIAlertControllerStyleActionSheet];
        
        UIAlertAction *showGallery = [UIAlertAction actionWithTitle:@"Show Gallery"
                                                              style:UIAlertActionStyleDefault
                                                            handler:^(UIAlertAction *action){
           //Write Show Gallery Code here
            
        }];
        
        UIAlertAction *showCamera = [UIAlertAction actionWithTitle:@"Cancel"
                                                             style:UIAlertActionStyleCancel
                                                           handler:^(UIAlertAction *action){
           //showCamera
            
        }];
        UIAlertAction *delete = [UIAlertAction actionWithTitle:@"Delete"
                                                         style:UIAlertActionStyleDestructive
                                                       handler:^(UIAlertAction *action){
            //delete
            
        }];
        

        [alert addAction:delete];
        [alert addAction:showCamera];
        [alert addAction:showGallery];
        
        [self presentViewController:alert animated:YES completion:nil];
        
    }
    else if((int)((UIButton*)sender).tag == 12){
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Login" message:nil preferredStyle:UIAlertControllerStyleAlert];
        
        [alert addTextFieldWithConfigurationHandler:^(UITextField *textfield){
        
            textfield.placeholder = @"Login";
            
        }];
        

        [alert addTextFieldWithConfigurationHandler:^(UITextField *textfield){
            
            textfield.placeholder = @"Password";
            textfield.secureTextEntry = YES;
            
        }];
        
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
            //OK Action
            
            UITextField *txtLogin = alert.textFields[0];
            UITextField *txtpwd = alert.textFields[1];
            
            NSLog(@"USER: PWD : %@:%@",txtLogin.text,txtpwd.text);
            
            
        }];
        
        [alert addAction:ok];
        
        [self presentViewController:alert animated:YES completion:nil];
        
    }
}

@end
