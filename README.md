# scopeについての学習

### 使用しているGem
- faker ※ランダムな値を入れられるGem
- gimei ※日本人の名前や住所をランダムで返すGem

### 編集・作成したファイルについて
- gemfile     = faker・gimeiを記述
- seeds.rb    = faker・gimeiを活用したダミーデータを作成
- controllers = homes_controller
-             = posts_controller
- models      = post.rb
-             = user.rb
- views       = home.html.erb
-             = post.html.erb
- config      = routes.rb