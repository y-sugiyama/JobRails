# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Active Recordのオブジェクトはハッシュやブロックから作成することができます。
#また、作成後に属性を手動で追加できます。
#newメソッドを実行すると単に新しいオブジェクトが返されますが、
#createを実行すると新しいオブジェクトが返され、さらにデータベースに保存されます。


User.create(email: 'admin@admin.com', password: 'admin123',password_confirmation:'admin123',role:'admin' )

Post.create(title: 'サイトをリニューアルしました', body: '弊社サイトに◯◯機能を追加しました｡一部△△となっていますが､◯日からご利用いただけます｡' ,created_at:'2016-08-27' )
Post.create(title: '人材募集を開始しました', body: '弊社システム開発部にてエンジニアの募集を開始しました｡◯◯からご応募いただけます｡',created_at:'2016-08-28' )
Post.create(title: 'イベントを開催します', body: '△月△日､◯◯にて◯◯イベントを開催します｡詳細は◯◯から御覧ください｡' ,created_at:'2016-08-29')
Post.create(title: 'サイトをリニューアルしました', body: '弊社サイトに◯◯機能を追加しました｡一部△△となっていますが､◯日からご利用いただけます｡' ,created_at:'2016-08-30' )
Post.create(title: '人材募集を開始しました', body: '弊社システム開発部にてエンジニアの募集を開始しました｡◯◯からご応募いただけます｡',created_at:'2016-08-31' )
Post.create(title: 'イベントを開催します', body: '△月△日､◯◯にて◯◯イベントを開催します｡詳細は◯◯から御覧ください｡' ,created_at:'2016-09-01')
Post.create(title: 'イベントを開催します', body: '△月△日､◯◯にて◯◯イベントを開催します｡詳細は◯◯から御覧ください｡' ,created_at:'2016-09-02')


Category.create(id:'1',name:'Web/システム開発')
Category.create(id:'2',name:'アプリ開発')
Category.create(id:'3',name:'運用・保守')
Category.create(id:'4',name:'デザイン')
Category.create(id:'5',name:'ゲーム')

Job.create(title:'デザイナー募集',description:'株式会社シマウマでは､以下の要項でデザイナーを募集いたします｡募集人数１名 スキルセット◯◯◯◯◯◯',salary:800,company:'株式会社シマウマ',category_id:1,area:'神奈川県',created_at:'2016-08-27')
Job.create(title:'エンジニア募集',description:'株式会社まるい政策研究所では､以下の要項でエンジニアを募集いたします｡募集人数１名 スキルセット◯◯◯◯◯◯',salary:900,company:'株式会社まるい制作研究所',category_id:2,area:'東京都',created_at:'2016-08-28')
Job.create(title:'クリエイター募集',description:'株式会社ぱんだメディアでは､以下の要項でクリエイターを募集いたします｡募集人数１名 スキルセット◯◯◯◯◯◯',salary:700,company:'株式会社ぱんだメディア',category_id:3,area:'埼玉県',created_at:'2016-08-29')
Job.create(title:'アーキテクト募集',description:'株式会社カピパラでは､以下の要項でデザイナーを募集いたします｡募集人数１名 スキルセット◯◯◯◯◯◯',salary:500,company:'株式会社カピパラ',category_id:4,area:'千葉県',created_at:'2016-08-23')
Job.create(title:'デザイナー募集',description:'株式会社シマウマでは､以下の要項でデザイナーを募集いたします｡募集人数１名 スキルセット◯◯◯◯◯◯',salary:800,company:'株式会社シマウマ',category_id:1,area:'神奈川県',created_at:'2016-09-27')
Job.create(title:'エンジニア募集',description:'株式会社まるい政策研究所では､以下の要項でエンジニアを募集いたします｡募集人数１名 スキルセット◯◯◯◯◯◯',salary:900,company:'株式会社まるい制作研究所',category_id:2,area:'東京都',created_at:'2016-09-28')
Job.create(title:'クリエイター募集',description:'株式会社ぱんだメディアでは､以下の要項でクリエイターを募集いたします｡募集人数１名 スキルセット◯◯◯◯◯◯',salary:700,company:'株式会社ぱんだメディア',category_id:3,area:'埼玉県',created_at:'2016-09-29')
Job.create(title:'アーキテクト募集',description:'株式会社カピパラでは､以下の要項でデザイナーを募集いたします｡募集人数１名 スキルセット◯◯◯◯◯◯',salary:500,company:'株式会社カピパラ',category_id:4,area:'千葉県',created_at:'2016-09-23')




     