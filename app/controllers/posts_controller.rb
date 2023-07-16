class PostsController < ApplicationController
  def index #indexアクションを定義した
    @posts = Post.all #Postの中の全てのデータなので複数形@postsにする。変数の命名は自由だがわかりやすくするため　ここのPostはPostモデルを表している
  end

  def new
  end

  def create
    Post.create(content: params[:content])
    redirect_to "/posts"
  end
end

#インスタンス変数はメソッドの外でも使える？
#コントローラのdefの中身はデータが必要な場合だけ記述すればいいっぽい。
#ビューに遷移したいだけのときにはdefの中身は不要。多分コントローラがまずはデータを引っ張ってきて、それをビューに流すという流れなんだと思う