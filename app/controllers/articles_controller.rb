class ArticlesController < ApplicationController
    protect_from_forgery with: :null_session
    def list
        article=Article.all
        render json: article
    end
    def singleList
        article=Article.find(params[:id])
        render json: article
    end
    def createList
        add_list={
            "blog_title" => params["blog_title"],
            "blog_description" =>params["blog_description"],
            "blog_image"=>params["blog_image"]
            }
        article=Article.new(add_list)
        article.save
        render json: article
    end

end