# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
  email: "test@test.com",
  password: "testtest"
  )


User.create!(
  email: "test1@test.com",
  name: "鈴木太郎",
  password: "password",
  image: File.open("./app/assets/images/img/sample15-min.JPG"),
  smart_phone: "iphone SE 64GB",
  tablet: "ipad mini5 64GB",
  background: "20代、独身、一人暮らし、会社員、都内在住",
  mno_mvno: "au 楽天",
  choice_reason:
  "仕事上PCなどを常に持ち運ぶことが多いため、他のデバイスは小型軽量を目指して選んでいます。
  容量もクラウドを利用すれば少なくても問題ない、また本体の中に保存するデータが多いほどデータ移行が面倒になるのであまり使わないようにしています
  電子書籍のダウンロードデータが一番容量を使っていますがそれを含めてもでも半分くらい(32GB)しか利用していません。
  キャリアは特にこだわりがなく出来るだけ遅くない回線の中でキャンペーンなどを利用しつつMNPしてやりくりしています",
  )

  User.create!(
  email: "test2@test.com",
  name: "鈴木次郎",
  password: "password",
  image: File.open("./app/assets/images/img/sample10-min.JPG"),
  smart_phone: "Galaxy S9+",
  tablet: "ipad mini5 64GB",
  background: "30代、独身、二人暮らし、専業主婦、地方在住",
  mno_mvno: "ドコモ",
  choice_reason:
  "機能をそれほど求めないが、画面が大きい方がうれしい",
  )

Score.create!(
  user_id: 1,
  score: 28
)

Score.create!(
  user_id: 2,
  score: 18
)

Tag.create!([
  {name: "モバイル通信"},
  {name: "通信料金"},
  {name: "固定通信"},
  {name: "通信技術"},
  {name: "端末 スマホ"},
  {name: "端末 タブレット"},
  {name: "ガジェット"},
  {name: "雑学"},
  {name: "その他"},
  {name: "iphone"},
  {name: "ipad"},
  {name: "android"},
  {name: "Docomo"},
  {name: "au"},
  {name: "Soft Bank"},
  {name: "UQ mobile"},
  {name: "Y! mobile"},
  {name: "ahamo"},
  {name: "povo"},
  {name: "LINEMO"},
  {name: "mvno"},
  {name: "備忘録"}
  ])

3.times do |n|
  Article.create!(
    admin_id: 1,
    image: File.open("./app/assets/images/img3/sample3.jpg"),
    title:
    "常識になりつつSIMフリー#{n + 1}、あなたは正しく理解していますか？",
    body:
    "#{n + 1}「SIMフリー」と聞くと添付写真にあるチップ（SIM）に何かしらの制限があり、それを解除するようなイメージを持ってしまうかもしれない。
    しかし実際にはスマホ本体のほうにかけられた制限（SIMロック）を解除した状態のことをSIMフリーと呼んでいる。
    スマホ本体というのは本体ごとに振られているIMEI（製造番号）ごとに制限がかけられているということだ。

    サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、
    サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、


    サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、
    サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、
    サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、

    サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、

    サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、

    サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、
    サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、

    サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、

    サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、
    サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、
    サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、
    サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、
    サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、
    サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト、サンプルテキスト。",
    level: 1,
    tag_ids: [1, 2, 5, 6, 8, 9]
    )
end

3.times do |n|
  Article.create!(
    admin_id: 1,
    image: File.open("./app/assets/images/img3/sample2.jpg"),
    title:
    "最近のスマホ充電器で目にする「PD」とか「GaN」って実はすごい便利#{n + 1}",
    body:
    "スマホの充電器が壊れたり、追加でほしくなった時に100円ショップへ行くのもいいが、ぜひ一度家電量販店を覗いてみてほしい。
    ここ数年のスマホ充電器の成長は実はすごい。
    年々大容量になるスマホのバッテリー、早く充電を完了させたいユーザーに対応するべく各メーカーが素晴らしい充電器を日夜開発している。
    一昔前のiphoneに付属でついてきていた小さな充電器は５Wの充電器だ。iphone8以降は急速充電に対応しており１８W前後での充電が可能になった。
    空の状態から30分充電したとして５Wの充電器では２０％も充電できないだろうが、急速充電器なら５０％以上の充電が行える。
    タブレットなどスマホよりバッテリー容量が大きいデバイスではさらにその機能を実感できるだろう。

    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、
    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、
    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、
    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、
    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、

    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、


    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、
    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、

    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、


    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、
    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、
    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、
    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、
    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、
    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、
    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、
    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、
    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、
    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、
    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、

    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、
    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、
    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、
    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、
    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、
    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、
    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、
    テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、テストテキスト、
    ",
    level: 0,
    tag_ids: [5, 6, 7, 8, 9, 10, 11, 12]
    )
end

3.times do |n|
  Article.create!(
    admin_id: 1,
    image: File.open("./app/assets/images/img3/sample4.jpg"),
    title:
    "大手キャリアも導入するかも、eSIMの利便性について#{n + 1}",
    body:
    "#{n + 1}会員・esimとはembedded(埋め込まれた)simの略です。スマホなどの本体の中にsimが埋め込まれており、
    従来の物理SIMと違いオンラインの手続きを終えた後にQRコードなどの読み込みで即時利用開始できます。
    SIMの紛失や故障などが起きにくいメリットがあります。他にも製品としては少ないですがノートPCや電化製品にもこの技術が取り入れられています。
    Iot発展の大きな役割を担っています。
    近年では楽天モバイルやiij mio、POVO、ahamoなどでも取り入れられてきているため耳にしたことがある方も増えてきたのではないでしょうか。
    ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、

    ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、
    ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、
    ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、
    ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、
    ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、
    ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、
    ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、
    ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、

    ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、


    ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、
    ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、
    ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、
    ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、
    ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、
    ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、
    ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、


    ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、


    ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、
    ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、
    ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、
    ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、
    ランダムテキスト、ランダムテキスト、ランダムテキスト、

    ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト、ランダムテキスト。",
    level: 2,
    tag_ids: [1, 2, 4, 5, 6, 7, 8, 12, 18, 19]
    )
end

3.times do |n|
  Article.create!(
    user_id: 1,
    image: File.open("./app/assets/images/img3/sample1.jpg"),
    title:
    "今さら聞けない、通信料金の内訳を解説#{n + 1}",
    body:
    "#{n + 1}通信料金が安くならないかと考えたことはありますか？
    きっと多くの人は考えたことがあるだろう。携帯ショップに行って相談してみたけどあまり変わらなかった、調べてみたけどよくわからなったということもあったのではないだろうか。
    それもそのはず、携帯料金は各種要素の合計料金が請求されているので内訳が分かりづらい、携帯ショップではその会社のサービスの範囲でしか提案を受けることが出来ないからだ。

    まずは料金の内訳を知ることで安くできる可能性がある要素を洗い出すことから携帯料金の見直しは始まる。
    例えば、携帯料金が１００００円でその内訳が本体の分割代９９９９円、通信料が1円の人がいた場合に本体の一括清算しか安くする方法が無いといったことが分かる。
    では内訳をみていこう。

    シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、
    シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、
    シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、
    シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、
    シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、
    シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、


    シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、

    シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、
    シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、
    シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、
    シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、
    シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、
    シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、
    シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、
    シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、
    シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、

    シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、

    シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、
    シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、
    シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、
    シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、
    シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、
    シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、
    シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、
    シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、
    シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト、シャッフルテキスト。",
    level: 0,
    tag_ids: [1, 2, 5, 8, 9, 22]
    )
end

3.times do |n|
  Article.create!(
    user_id: 1,
    image: File.open("./app/assets/images/img3/sample5.jpg"),
    title:
    "アップルのエコシステムについて#{n + 1}",
    body:
    "#{n + 1}アップルのエコシステムとは簡単に説明するとアップルのプロダクトでそろえると最高ですよということ。
    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、
    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、
    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、
    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、
    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、
    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、

    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、

    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、

    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、

    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、
    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、
    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、
    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、

    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、
    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、
    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、
    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、
    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、
    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、
    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、
    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、

    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、
    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、
    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、
    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、
    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、
    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、


    テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、テキスト、
    ",
    level: 2,
    tag_ids: [1, 2, 5, 8, 9, 22]
    )
end

Quiz.create!(
    question: "iphoneのOSといえば？",
    choice1: "iOS",
    choice2: "apple OS",
    choice3: "aOS",
    choice4: "android",
    answer: "1",
    level: 0
  )

  Quiz.create!(
    question: "モバイルバッテリーの容量を示す際に容用いられる単位は？",
    choice1: "meh",
    choice2: "mAh",
    choice3: "Vah",
    choice4: "mh",
    answer: "2",
    level: 0
  )

  Quiz.create!(
    question: "一般的なWi-FiやBluetoothの接続設定はできる",
    choice1: "はい",
    choice2: "いいえ",
    answer: "1",
    level: 0
  )

 Quiz.create!(
    question: "利用中のスマホの機種が分かる",
    choice1: "はい",
    choice2: "いいえ",
    answer: "1",
    level: 0
  )

 Quiz.create!(
    question: "LTEとは何の略？",
    choice1: "latest task embedded",
    choice2: "long term evolution",
    choice3: "list task exists",
    choice4: "latest turn experience",
    answer: "2",
    level: 0
  )

  Quiz.create!(
    question: "appleが作るスマートフォンといえば？",
    choice1: "Xperia",
    choice2: "galaxy",
    choice3: "AQUOS",
    choice4: "iphone",
    answer: "4",
    level: 0
  )

 Quiz.create!(
    question: "利用中の料金プランの内容はおおむね把握している",
    choice1: "はい",
    choice2: "いいえ",
    answer: "1",
    level: 0
  )

 Quiz.create!(
    question: "月の通信費の内訳(端末代、通話プラン、データプランetc)をおおむね把握している",
    choice1: "はい",
    choice2: "いいえ",
    answer: "1",
    level: 0
  )

   Quiz.create!(
    question: "iphoneの充電端子の規格として2021/4現在採用されている規格の名称は？",
    choice1: "タイプC",
    choice2: "thunderbolt",
    choice3: "micro-USB",
    choice4: "lightning",
    answer: "4",
    level: 0
  )

  Quiz.create!(
    question: "1GB 1MB 1KB 1TB をデータ量の小さい並び替えだ場合、正しいのはどれ？",
    choice1: "1TB 1GB 1MB 1KB",
    choice2: "1MB 1KB 1GB 1TB",
    choice3: "1GB 1KB 1TB 1MB",
    choice4: "1KB 1MB 1GB 1TB",
    answer: "4",
    level: 0
  )

  Quiz.create!(
    question: "5Gの特徴として挙げられる項目のうち間違っているのはどれか？",
    choice1: "低遅延",
    choice2: "長距離",
    choice3: "大容量",
    choice4: "多接続",
    answer: "2",
    level: 1
  )

  Quiz.create!(
    question: "iphoneなどのワイヤレス充電に関する国際標準規格は？",
    choice1: "Ti",
    choice2: "Qi",
    choice3: "Wi",
    choice4: "Xi",
    answer: "2",
    level: 1
  )

  Quiz.create!(
    question: "利用中のスマホのIMEIを画面に表示して確認できる",
    choice1: "はい",
    choice2: "いいえ",
    answer: "1",
    level: 1
  )

  Quiz.create!(
    question: "スマホの充電器などで目にすることが多くなったGaNとは何の略？",
    choice1: "窒素ガリウム",
    choice2: "塩化マグネシウム",
    choice3: "マンガンナトリウム",
    choice4: "ガンマンナトリウム",
    answer: "1",
    level: 1
  )

  Quiz.create!(
    question: "スマホの充電器などで目にすることが多くなったPDとは何の略？",
    choice1: "perfect deliver",
    choice2: "power direct",
    choice3: "power delivery",
    choice4: "peace devise",
    answer: "3",
    level: 1
  )

 Quiz.create!(
    question: "市販のWi-FIルーターで見かける接続可能な周波数帯はどれ？",
    choice1: "3.6と6Ghz",
    choice2: "2.1と4.8Ghz",
    choice3: "2.4と5Ghz",
    choice4: "3.7と8.3Ghz",
    answer: "3",
    level: 1
  )

Quiz.create!(
    question: "MVNOは何の略",
    choice1: "mobile vertical nest on",
    choice2: "media visited nothing organization",
    choice3: "mobile virtual network operator",
    choice4: "module view no office",
    answer: "3",
    level: 1
  )

  Quiz.create!(
    question: "サブブランド、格安SIMのブランド名を5個以上言える",
    choice1: "はい",
    choice2: "いいえ",
    answer: "1",
    level: 1
  )

  Quiz.create!(
    question: "SIMフリーについて簡単に説明できる",
    choice1: "はい",
    choice2: "いいえ",
    answer: "1",
    level: 1
  )

  Quiz.create!(
    question: "MNPについて説明できる",
    choice1: "はい",
    choice2: "いいえ",
    answer: "1",
    level: 1
  )

   Quiz.create!(
    question: "大手キャリアの２年契約について説明できる",
    choice1: "はい",
    choice2: "いいえ",
    answer: "1",
    level: 1
  )

 Quiz.create!(
    question: "e-SIMとはどんな技術か知っている、または使ったことがある",
    choice1: "はい",
    choice2: "いいえ",
    answer: "1",
    level: 2
  )

 Quiz.create!(
    question: "Bluetoothの名前の由来を知っている",
    choice1: "はい",
    choice2: "いいえ",
    answer: "1",
    level: 2
  )

  Quiz.create!(
    question: "Iotとは何の略？",
    choice1: "Internet of things",
    choice2: "International of things",
    choice3: "Identifer on things",
    choice4: "Icon on things",
    answer: "1",
    level: 2
  )

  Quiz.create!(
    question: "大手キャリアのサービス「+メッセージ」で採用されている規格は？",
    choice1: "SMS",
    choice2: "HRD",
    choice3: "TST",
    choice4: "RCS",
    answer: "4",
    level: 2
  )

  Quiz.create!(
    question: "近年注目を集める折り畳みスマホ、ギャラクシーから発売された折り畳みスマホは？",
    choice1: "Galaxy Page",
    choice2: "Galaxy Fold",
    choice3: "Galaxy X",
    choice4: "Galaxy Pair",
    answer: "2",
    level: 2
  )

  Quiz.create!(
    question: "2020年に発売されたiphoneに充電器はついてくる、〇か✕か",
    choice1: "〇",
    choice2: "✕",
    answer: "2",
    level: 2
  )

  Quiz.create!(
    question: "NFCは何の略",
    choice1: "Nest Field Common",
    choice2: "Near Field Communication",
    choice3: "New Future Center",
    choice4: "Nest Fick Col",
    answer: "2",
    level: 2
  )

  Quiz.create!(
    question: "一般的にWi-Fiは2.4Ghzより5Ghzのほうが障害物に強い、〇か✕か",
    choice1: "〇",
    choice2: "✕",
    answer: "2",
    level: 2
  )

  Quiz.create!(
    question: "iphoneでワイヤレス充電が出来るようになったのはiphone7からである、〇か✕か",
    choice1: "〇",
    choice2: "✕",
    answer: "2",
    level: 2
  )

  Quiz.create!(
    question: "SIMは何の略？",
    choice1: "Subscriber Identity Module",
    choice2: "Super Identity model",
    choice3: "Send Internet Module",
    choice4: "Success In Module",
    answer: "1",
    level: 2
  )

5.times do |n|
  Contact.create!(
    title: "test#{n + 1}",
    message: "sample.message#{n + 1}"
    )
end

5.times do |n|
  Comment.create!(
    user_id: 1,
    article_id: 40,
    comment: "サンプルコメント#{n + 1}"
    )
end

