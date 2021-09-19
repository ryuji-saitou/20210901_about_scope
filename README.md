# scopeについての学習

### 結論
scopeとは<br>
モデルに 「この名前はこういう処理をする」 というメソッド (scope) を定義することで、<br>
クエリ(データベースへの命令文)として使用することができる。<br>
記述例：https://github.com/ryuji-saitou/20210901_about_scope/blob/main/app/models/post.rb

### 使用しているGem
- faker ※ランダムな値を入れられるGem
- gimei ※日本人の名前や住所をランダムで返すGem

### 編集・作成したファイルについて
|編集したファイル|編集内容|
|:----|:----|
|gemfile|faker・gimeiを記述|
|seeds.rb|faker・gimeiを活用したダミーデータを作成|
|controllers|homes_controller<br>posts_controller|
|models|post.rb<br>user.rb|
|views|home.html.erb<br>post.html.erb|
|config|routes.rb|
