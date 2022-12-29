class RootController < ApplicationController
        def contact
            render "contact"
        end
        def index
            @posts=Post.all
            render "index"
        end
        def about
            render "about"
        end
        def add
            @post=Post.new
            @post.title=params[:title]
            @post.description=params[:description]
            @post.save
            @posts=Post.all
            redirect_to ('/index')
        end
        def delete
            @post=Post.find(params[:id])
            @post.destroy
            @posts=Post.all
            render "index"
        end
        def update
            @post=Post.find(params[:id])
            @id=params[:id]
            @title=@post.title
            @description=@post.description
            render "updateForm"
        
        end
        def updateform
            @post=Post.find(params[:id])
            @post.title=params[:title]
            @post.description=params[:description]
            @post.save
            @posts=Post.all
            render "index"
        
        end
        def search
            @query=params[:query]
            @posts=Post.where("posts.title LIKE ?",["%#{@query}%"])
            render "index"
        end
    
    end

