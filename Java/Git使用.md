## 1、Git撤销某个文件修改
Git撤销文件修改分为以下两种情况：
- 仅在工作区修改，并未提交到暂存区 (即还没有执行add操作)
- 修改已经提交到了暂存区 (即执行了add操作)

### 1）仅在工作区修改的撤销
```bash
 # 对于单个文件的撤销修改而言，使用下面方法。
 git checkout -- 文件名
 
 # 若想撤销工作区中所有文件的修改，使用下面方法。
 git checkout .
```
注意：`git checkout` 是让文件回到最近一次`git commit`或`git add`时的状态。

### 2) 修改已经提交到了暂存区

修改已经提交到暂存区也分两种情况：

（1）该文件目前还没有commit过一次
```bash
#放弃该文件的暂存
  git rm --cached 文件名 
# 使用该命令后无法使用下面的命令， 因为该命令是回到最近的一次commit或者add
git checkout -- 文件名
```

（2）该文件有commit记录
```bash
# 让该文件回到工作区的状态。
git reset HEAD file
# 再撤销修改即可
git chekcout -- file
```