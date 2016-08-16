//
//  CCUploadModel.h
//  CCNetWorkManager
//
//  Created by jack on 16/8/16.
//  Copyright © 2016年 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 
 构造上传文件所需模型
 
*/
@interface CCUploadModel : NSObject

//上传数据
@property (nonatomic,strong)NSData *data;

//上传参数
@property (nonatomic,copy)NSString *name;

//上传文件名
@property (nonatomic,copy)NSString *fileName;

//上传文件类型
@property (nonatomic,copy)NSString *mimeType;

@end
