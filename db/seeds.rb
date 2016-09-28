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


