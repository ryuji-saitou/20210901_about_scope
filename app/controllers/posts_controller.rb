class PostsController < ApplicationController
  def post
    @posts1 = Post.search_title_specific
    @posts2 = Post.search_title_ambiguous
    @posts3 = Post.search_title_ambiguous_limit
    @posts4 = Post.search_title_ambiguous_argument(3)
    @posts5 = Post.search_title_ambiguous_argument_order(25)
  end
end
