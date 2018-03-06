//
//  ViewController.m
//  FileOperation
//
//  Created by xtz_pioneer on 2018/3/6.
//  Copyright © 2018年 xtz_pioneer. All rights reserved.
//

#import "ViewController.h"
#import "TXFileOperation.h"
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


- (IBAction)button:(id)sender {
    //获取documents路径
    NSString * documentsDirPath=[TXFileOperation documentsDir];
    //文件夹名称
    NSString * folderName=@"test";
    //拼接文件夹路径
    NSString * folderPath=[NSString stringWithFormat:@"%@/%@",documentsDirPath,folderName];
    //创建文件夹
    if ([TXFileOperation createDirectoryAtPath:folderPath]) {
        NSLog(@"文件夹创建成功");
    }else{
        NSLog(@"文件夹创建失败");
    }
    //文件名称
    NSString *  fileName=@"text.txt";
    //拼接文件地址
    NSString * filePath=[NSString stringWithFormat:@"%@/%@",folderPath,fileName];
    //创建文件
    if ([TXFileOperation createFileAtPath:filePath]) {
        NSLog(@"文件创建成功");
        NSLog(@"文件地址:%@",filePath);
    }else{
        NSLog(@"文件创建失败");
    }
    //向文件中写入内容
    if ([TXFileOperation writeFileAtPath:filePath content:self.textView.text]) {
        NSLog(@"文件内容写入成功");
    }else{
        NSLog(@"文件内容写入失败");
    }
}
@end
