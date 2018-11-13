# sync-repos-script
批量同步仓库代码脚本。

# 前置条件：
- 1. 两个git仓库都设置了SSH Key，可以从该机器直接clone 
- 2. 源仓库/目标仓库均存在

# 使用：
`perl sync_repo.pl repos.txt`

# 其中`repos.txt`:
repos.txt 格式：源git地址->目的git地址
```
git@github.com/source-demo.git git@github.com/target-demo.git
git@github.com/source-demo-02.git git@github.com/target-demo-02.git
```

# 日志输出
```
git@git.mschina.io:microservice/dmp/DMP-Base-Component.git -> git@192.168.2.180:dmp-for-dcs-internal/DMP-Base-Component.git  dir=DMP-Base-Component
Already up-to-date.
Local branch:es-6.3.2-for-skywalking-6.0.0
Local branch:master
Local branch:release/1.0
Local branch:release/1.1
Local branch:release/1.2
Local branch:release/1.2-SNAPSHOT
Local branch:release/1.4
Found branch:HEAD -> origin/master
sh: 1: cannot create origin/master: Directory nonexistent
Found branch:es-6.3.2-for-skywalking-6.0.0
Switched to branch 'es-6.3.2-for-skywalking-6.0.0'
Your branch is up-to-date with 'origin/es-6.3.2-for-skywalking-6.0.0'.
Already up-to-date.
Found branch:master
Switched to branch 'master'
Your branch is up-to-date with 'origin/master'.
Already up-to-date.
Found branch:release/1.0
Switched to branch 'release/1.0'
Your branch is up-to-date with 'origin/release/1.0'.
Already up-to-date.
Found branch:release/1.1
Switched to branch 'release/1.1'
Your branch is up-to-date with 'origin/release/1.1'.
Already up-to-date.
Found branch:release/1.2
Switched to branch 'release/1.2'
Your branch is up-to-date with 'origin/release/1.2'.
Already up-to-date.
Found branch:release/1.2-SNAPSHOT
Switched to branch 'release/1.2-SNAPSHOT'
Your branch is up-to-date with 'origin/release/1.2-SNAPSHOT'.
Already up-to-date.
Found branch:release/1.4
Switched to branch 'release/1.4'
Your branch is up-to-date with 'origin/release/1.4'.
Already up-to-date.
Counting objects: 9, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (7/7), done.
Writing objects: 100% (9/9), 964 bytes | 0 bytes/s, done.
Total 9 (delta 5), reused 6 (delta 2)
remote: 
remote: To create a merge request for release/1.4, visit:
remote:   http://192.168.2.180/dmp-for-dcs-internal/DMP-Base-Component/merge_requests/new?merge_request%5Bsource_branch%5D=release%2F1.4
remote: 
To git@192.168.2.180:dmp-for-dcs-internal/DMP-Base-Component.git
   c47ce60..57f3d27  release/1.4 -> release/1.4
Branch es-6.3.2-for-skywalking-6.0.0 set up to track remote branch es-6.3.2-for-skywalking-6.0.0 from git@192.168.2.180:dmp-for-dcs-internal/DMP-Base-Component.git.
Branch master set up to track remote branch master from git@192.168.2.180:dmp-for-dcs-internal/DMP-Base-Component.git.
Branch release/1.0 set up to track remote branch release/1.0 from git@192.168.2.180:dmp-for-dcs-internal/DMP-Base-Component.git.
Branch release/1.1 set up to track remote branch release/1.1 from git@192.168.2.180:dmp-for-dcs-internal/DMP-Base-Component.git.
Branch release/1.2 set up to track remote branch release/1.2 from git@192.168.2.180:dmp-for-dcs-internal/DMP-Base-Component.git.
Branch release/1.2-SNAPSHOT set up to track remote branch release/1.2-SNAPSHOT from git@192.168.2.180:dmp-for-dcs-internal/DMP-Base-Component.git.
Branch release/1.4 set up to track remote branch release/1.4 from git@192.168.2.180:dmp-for-dcs-internal/DMP-Base-Component.git.
Everything up-to-date
```

