//
//  NSString+extension.h
//  MultiLanguage
//
//  Created by fuzhaurui on 2017/1/5.
//  Copyright © 2017年 fuzhaurui. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extension)

/*
 *MARK: -返回已设置语言类型
 */
-(NSString *)showDefaultMultiLanguageText;


/*
 *MARK:      -返回已设置语言类型、
 *language:  -保持多语言数据保持文件名 : 语言名字 前两个字母小写  例如（Japanese ：ja）
 */
-(NSString *)showMultiLanguageText:(NSString *)language;

@end
