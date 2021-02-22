# 代码结构概述
main.m为核心源文件，其他.m文件均只包含一个函数。各函数之间存在相互调用的现象
## main.m
主控流程
## myinput.m
控制程序起始输出信息和将输入表达式返回到主控流程中
## Check.m
检查表达式是否符合要求同时返回最大变量值和最小变量值
## process.m
对myinput输入的字符串进行处理，使之变成每一个乘积项为一个元素的字符串数组
## Var2Code.m
将字母形式输入的字符串转化为二进制数字符串
## CreateMatrix.m
根据二进制数字符串创建按照字符串中数字1个数的分类表
### UnitCreate.m
CreateMatrix循环中的一步
### ChangeMatrix.m
递归函数遍历乘积项的所有最小项
## Merge.m
合并最小项
### UnitMerge.m
Merge循环中的一步
### QuChong.m
许多步骤中的去掉重复和删除元素为空矩阵的多余元胞数组维数
## JudgeInclude.m
制作包含矩阵，表示最小项和乘积项之间的包含关系
## XiangLeast.m
递归函数，用以选择化简项中最短的
## Code2Var.m
将二进制编码转换为表达式输出
