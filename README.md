# TXFileOperation
* iOS文件(夹)快速简单完成增、删、改、查、写.快速精确计算文件夹大小、文件大小系列文件操作.
### TXFileOperation索引
* 沙盒目录相关
* 遍历文件夹
* 获取文件属性
* 创建文件(夹)
* 删除文件(夹)
* 复制文件(夹)
* 移动文件(夹)
* 根据URL获取文件名
* 判断文件(夹)是否存在
* 获取文件(夹)大小
* 写入文件内容
### cocoapods集成
* pod 'TXFileOperation', '~> 1.0'
### 代码片段
```objc
#pragma mark - 沙盒目录相关
///沙盒的主目录路径
+ (NSString *)homeDir;
///沙盒中Documents的目录路径
+ (NSString *)documentsDir;
///沙盒中Library的目录路径
+ (NSString *)libraryDir;
///沙盒中Library / Preferences的目录路径
+ (NSString *)preferencesDir;
///沙盒中Library / Caches的目录路径
+ (NSString *)cachesDir;
///沙盒中tmp的目录路径
+ (NSString *)tmpDir;


#pragma mark - 遍历文件夹
/**
 文件遍历
 
 @param path 目录的绝对路径
 @param deep 是否深遍历
 1. 浅遍历：返回当前目录下的所有文件和文件夹
 2. 深遍历：返回当前目录下及子目录下的所有文件和文件夹
 
 @return 遍历结果数组
 */
+ (NSArray *)listFilesInDirectoryAtPath:(NSString *)path deep:(BOOL)deep;
///遍历沙盒主目录
+ (NSArray *)listFilesInHomeDirectoryByDeep:(BOOL)deep;
///遍历Documents目录
+ (NSArray *)listFilesInDocumentDirectoryByDeep:(BOOL)deep;
///遍历Library目录
+ (NSArray *)listFilesInLibraryDirectoryByDeep:(BOOL)deep;
///遍历Caches目录
+ (NSArray *)listFilesInCachesDirectoryByDeep:(BOOL)deep;
///遍历tmp目录
+ (NSArray *)listFilesInTmpDirectoryByDeep:(BOOL)deep;

#pragma mark - 写入文件内容
///写入文件内容
+ (BOOL)writeFileAtPath:(NSString *)path content:(NSObject *)content;
///写入文件内容(错误信息error)
+ (BOOL)writeFileAtPath:(NSString *)path content:(NSObject *)content error:(NSError **)error;
```
### 使用方法
* #import <TXFileOperation.h>
* 下面是简单用法
```objc
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
    //拼接文件路径
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
```
