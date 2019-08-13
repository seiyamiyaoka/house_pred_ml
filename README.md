# udacity_capston_devops

### memo

- jenkins x コンテナをデプロイする上で設定が楽
- Blue/Green戦略 インスタンスは2つにする（bとg）, blueが稼働中でgreenがデプロイ用, 切り替える
- rails, nginx, flask, mysql, redis
- docker hubにimage保存
- EKSでクラスタ管理
- jenkins xを使ったblog https://aws.amazon.com/jp/blogs/opensource/continuous-delivery-eks-jenkins-x/
- jx delete eks seiya-cloud 削除コマンド
- serverless modeで作成するとUIはない


### iam
- eksとec2などを扱える権限が必要

### 手順
- cloudformationを使いubuntuでjenkins xを作成 => そもそもまちがっていた
- macのdockerからkubenetesでどの環境でクラスターを扱うか設定, 
- route53でhosted zoneを作成 https://docs.aws.amazon.com/ja_jp/Route53/latest/DeveloperGuide/CreatingHostedZone.html
- jxのeks作成後にはec2ができているのか => デフォルトでm5largeが2つ  
- docker for macでkubenetesのバージョンが決まっているとしてアップデートをかけた
- github上にstgとprod用のリポジトリができた

### goal
1
- jenkinsx install and setting(github assoc etc)
  - 
- blue/green deployment environment settings
2
- in local env, create docker image(rails, flask(udacity house predict), db, redis)
- docker image upload to docker hub
3
- in local env, kubenetes create cluster of minikube
- eks test(not use pipeline)
4
- create jenkins file(Docker image lint, application lint, application test)
- pipeline setting