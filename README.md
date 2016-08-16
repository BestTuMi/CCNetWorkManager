# CCNetWorkManager
根据项目需求对AFN的一次简单封装，如果你觉得用起来不错，欢迎star

Clone CCNetWorkManager并导入你的项目
---
```objective-c  
#import "CCNetWorkManager.h"
```

Get 
---
```objective-c  
  
    [CCNetWorkManager GETRequestWithUrl:@"" params:@{} success:^(NSDictionary *responseData) {
        
    } failure:^(NSError *requestError) {
        
    }];
  
```

Post
---
```objective-c  
  
    [CCNetWorkManager POSTRequestWithUrl:@"" params:@{} success:^(NSDictionary *responseData) {
        
    } failure:^(NSError *requestError) {
        
    }];
  
```

Upload
---
```objective-c  
  
    //uploadModel 构造上传文件所需模型
    [CCNetWorkManager UpLoadFileWithUrl:@"" params:@{} upLoadModel:nil progressBlock:^(NSProgress *progress) {
        
    } successBlock:^(NSDictionary *responseData) {
        
    } failureBlock:^(NSError *requestError) {
        
    }];
  
```
本次编写只是对AFN的一次简单封装，主要是想对代码结构设计做一些练习，并没有什么技术含量。可能还存在不足之处，以后有时间会完善，轻喷。
