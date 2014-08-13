//
//  ViewController.m
//  SampleAlertView
//
//  Created by 安倍裕貴 on 2014/07/11.
//  Copyright (c) 2014年 Yuki Abe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"小元気ですかー!?!?!?"
                                                   message:@"いくぞおおおおお"
                                                  delegate:self
                                         cancelButtonTitle:@"1,2,3"
                                         otherButtonTitles:@"ダァァァァ!!!!!", nil];
    //initWithTitle初期化しつつタイトルを指定
    //delegate「委任する」→この動作をどこでするのかを指定
    //alertviewは直接ViewController.mに書き込んでいく。
    
    [alert show];
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
    //delegatemethod：そのオブジェクトがもともと用意しているボタンに関連づけるメソッド
    //index：ボタンにつける番号(0番から始まる)
    //(void)→何もないという意味：()の中のメソッドにアクセスしたときに何も返すものがない
    //alertviewの中にあるclickedButtonAtIndex
    //buttonIndex：引数
    //*？？？？
{
    if(buttonIndex == 1){
        NSLog(@"OK");
        self.myLabel.text = @"ふっ";
    }else{
        NSLog(@"Cancel");
        self.myLabel.text =@"ふふふっ";
    }
    //動作確認のために便利なコード
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
