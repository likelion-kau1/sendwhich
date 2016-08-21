class HomeController < ApplicationController
    def index
    end

    def upload
      post = Post.new
      uploader = SendwhichUploader.new
      file = params[:sendfile]
      uploader.store!(file)

      post.file_path = uploader.url

      if post.save
        redirect_to '/home/index'
      else
        render :text => post.errors.messages
      end
    end
end
