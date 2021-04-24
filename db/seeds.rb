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

5.times do |n|
  User.create!(
    email: "test#{n + 1}@test.com",
    name: "test#{n + 1}",
    password: "password",
    image: File.open("./app/assets/images/img/user_image.jpg"),
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
end

Score.create!(
  user_id: 1,
  score: 28
)


5.times do |n|
  Item.create!(
    user_id: 1,
    name: "モバイルバッテリー#{n + 1}",
    maker: "anker#{n + 1}"
    )
end

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

10.times do |n|
  Article.create!(
    admin_id: 1,
    image: File.open("./app/assets/images/img/logo3.png"),
    title:
    "#{n + 1}管理・よく耳にするSIMフリーとは？　SIMフリーススマホとは？",
    body:
    "#{n + 1}そもそもSIMフリーとは？ SIMフリーとSIMロックを知るには、まずSIMが何なのかを理解しましょう。SIMとは、利用者の識別情報や電話番号などが記載されたICカードで、スマホを購入した際、本体に装着するものです。
    スマホはSIMを装着することで、Wi-Fiがない場所でもインターネットに接続ができたり、電話をかけたりすることも可能になります。
    オンラインショップでスマホを購入された人なら、自身でスマホに装着するため、実際にどういったものかを見たことがあるのではないでしょうか。

    SIMとは何なのかをお分かりいただいたところで、次にSIMフリーとは？ という疑問にお答えしていきます。

    まず先にSIMロックについて解説します。これはドコモ、au、ソフトバンクなどの大手キャリアで販売されているスマホを購入した際、ほかのキャリアや格安スマホなどでインターネットや電話を使えないようにするための仕組みです。
    ほかでは使えない、鍵をかけるということからSIMロックといいます。ただし、ロックがかかっているのはSIMではなくスマホ本体です。
    そのため、SIMロックがかかっているスマホのSIMを入れ替えることは可能ですが、入れ替えたとしてもインターネットと電話は使えません。

    そして、このSIMロックが解除された状態をSIMフリーといいます。SIMフリー状態のスマホであれば、例えばドコモで購入したスマホにソフトバンクのSIMを装着しても問題なく利用できます。
    また、AppleのiPhone、GoogleのPixelなどは、それぞれApple StoreやGoogle ストアであれば最初からSIMフリーの状態で購入できます。
    また、大手キャリア以外で販売されている多くの格安スマホも基本的にはSIMフリーです。

    これでSIMフリーとは？ という疑問が晴れましたね。

    ただし、SIMは3種類のサイズがあり、大きい順に「標準SIM」「microSIM（マイクロSIM）」「nanoSIM（ナノSIM）」となります。
    また、3種類のいずれかのサイズに合わせて1枚のSIM台紙から切り離せる「マルチSIM」も存在します。
    使用するスマホによって対応しているサイズは異なり、対応していないサイズのSIMカードは使用できないため、買い換える際には必ずSIMのサイズを確認をするようにしましょう。",
    level: 2,
    tag_ids: [2, 4, 6]
    )
end

10.times do |n|
  Article.create!(
    user_id: 1,
    image: File.open("./app/assets/images/img/rails.png"),
    title:
    "#{n + 1}esimってなに？
    何がいいの？",
    body:
    "#{n + 1}会員・esimとはembedded(埋め込まれた)simの略です。スマホなどの本体の中にsimが埋め込まれており、
    従来の物理SIMと違いオンラインの手続きを終えた後にQRコードなどの読み込みで即時利用開始できます。
    SIMの紛失や故障などが起きにくいメリットがあります。他にも製品としては少ないですがノートPCや電化製品にもこの技術が取り入れられています。
    Iot発展の大きな役割を担っています。
    近年では楽天モバイルやiij mio、POVO、ahamoなどでも取り入れられてきているため耳にしたことがある方も増えてきたのではないでしょうか。",
    level: 2,
    tag_ids: [3, 7, 11]
    )
end

10.times do |n|
  Article.create!(
    user_id: 2,
    image: File.open("./app/assets/images/img/logo.png"),
    title:
    "#{n + 1}会員・【2021年保存版】モバイルバッテリーの選び方と最新おすすめ25選",
    body:
    "#{n + 1}モバイルバッテリーとは、iPhoneなどのスマホやiPadなどのタブレット、モバイルWi-FiルーターやノートPC、任天堂スイッチなどの携帯ゲーム機、加熱式タバコ等の充電に利用できる、予備電源(携帯充電器)のことです。

    通勤通学の外出時や旅行・出張の際に持ち歩くスマホアクセサリーの必需品とも言えるアイテムです。

    元々モバイルバッテリーは、繰り返し使える電池である二次電池(にじでんち)を利用した一種のこと。
    二次電池は、蓄電池や充電式電池とも言われ、1度だけでなく繰り返し充電を行うことで電気を蓄えることができます。

    二次電池は多くの携帯電話やスマホ・タブレット、ノートPCやモバイルルーターといったモバイル機器に内蔵電池として活用されていますが、iPhoneをはじめとするモバイルガジェットが急速に普及したことから内蔵電池だけだと不足する電池を補う役割としてニーズが高まっていきました。

    特に日本は地震・台風・大雨等の自然災害が多い為、万が一の際にライフラインでもあるスマホの電池が切れることを防ぐ目的で災害対策として求める人が多いのも特徴です。

    また、2016年7月に日本でローンチされた位置情報ゲームアプリ『ポケモンGO』が大ヒットしたことにより、屋外でスマホ操作する際の必需品としてモバイルバッテリーの需要が一気に広がりました。
    今やスマートフォンの定番アクセサリーとしての地位を確立したモバイルバッテリーですが、一方で電車内で爆発するといった発火事故も報道され、安価な粗悪品も多数出回っています。

    モバイルバッテリーは、コンビニやドラッグストア、スーパーや駅の売店でも手に入る時代ですし、価格の高い多機能モデルから安いシンプルでコスパの高いモノまでラインナップは様々。
    毎日持ち歩く物だからこそ、安心して使えるモバイルバッテリーを選ぶことが重要なのです。

    2021年現在では、何回もiPhoneを充電できる大容量モデルから、PD(Power Delivery)やQuickCharge(QC)対応した急速充電できる高出力モデル、持ち運びに便利な軽量かつコンパクトなサイズ、屋外やアウトドアレジャーでの利用を想定した防水仕様、さらにはデザインにこだわったおしゃれでかわいい物までメーカー各社から幅広いラインナップが発売されています。

    せっかく購入した物が失敗で後悔しないよう、安全性はもちろん用途やデザインを含めてモバイルバッテリーの選び方の参考にしてもらえればと思います。",
    level: 1,
    tag_ids: [2, 8, 10]
    )
end

10.times do |n|
  Article.create!(
    user_id: 3,
    # image: File.open("./app/assets/images/img/logo1.png"),
    title:
    "#{n + 1}会員・今更聞けない「5G」とは？第5世代移動通信システム",
    body:
    "#{n + 1}まずは、そもそも5Gというものが一体何なのか、言葉の意味や注目される理由などを紹介していきます。

    5Gは「ファイブジー」と読みますが、言葉自体の意味としては「5th Generation」の略語で、「第5世代」のことを指しています。

    第5世代の前には当然1～４の世代がありますから、ここで簡易的に説明しましょう。

    ・1G…1980年代に登場したアナログ携帯電話

    ・2G…1990年代、通信がアナログからデジタルに移行し、インターネットへの接続が始まった

    ・3G…2000年代、通信の高速化が可能になりモバイル機器でのインターネット接続が一般化

    ・4G…2010年代、LTEという高速化技術とスマートフォンの台頭で生活やビジネスの利便性が向上

    では今話題になっている5Gはどんな特徴を持っているのでしょうか？

    5Gは大きく言うと、

    ①高速で大きな容量の通信ができること

    ②信頼性が高く低遅延の通信ができること

    ③多数の機器に同時に接続ができること

    という3つの特徴を持っています。

    4Gによってスマートフォンが日常生活の多くの面に影響を与えるようになりましたが、5Gが普及してくればスマートフォンのような限定的な機器だけでなく、あらゆる端末がアプリなどのシステムと連携していくことが予想されています。

    このあらゆる端末にインターネットを通して通信が可能になることを「IoT」（Internet of Things）と呼び、5Gの普及の恩恵を大きく受けられる要素の一つとされています。

    例えば家の玄関扉に通信機能が備われば、鍵をかけ忘れて外出したとしてもインターネットを通じて手元のスマートフォンに鍵をかけ忘れた旨を知らせてくれますし、スマートフォンから遠隔で鍵をかけることもできます。これはあくまでシンプルな例ですが、5Gの通信速度・通信量をもってすれば更に複雑な操作を遠隔で行うことが可能になります。

    また、住宅環境だけでなく工場にもIoTが普及すれば、生産性や安全性の向上も期待できるでしょう。

    IoTに関しては、以下の記事でも分かりやすく解説しています。ぜひ、併せてご覧ください。

    今更聞けない「IoT」とは何？わかりやすく事例を元に説明します

    このように、今後5Gが世界のさまざまなところで利用されるようになれば、ビジネスや日常の生活が大きく変化すると言われています。

    ※なお、通信やインターネットのことについての記事を読む際、5Gと似たような言葉で、5GHz、5Gbyte、5Gbpsなどがありますので間違えないように注意してください。

    それぞれの意味を簡単に説明すると、5GHzは５ギガヘルツと読み、電波の周波数を表しています。5Gbyteは5ギガバイトで、スマホで使える通信のデータ量や、スマホやPCに書きこむデータ量などを指す時に使います。5Gbpsは5ギガビーピーエスと読み、インターネット回線の通信速度などを表します。

    つまり、これらの言葉は何らかの「単位」ですが、「5G」は通信環境全体を指しているので、記事全体の文脈に注意していれば問題はありません。",
    level: 0,
    tag_ids: [1, 3, 5]
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
    choice4: "他接続",
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

