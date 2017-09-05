class GenresController < ApplicationController
  
    def new
      @genre = Genre.new
    end

    def create
      genre = Genre.create(genre_params)
      redirect_to genre_path(genre)
    end

    def show
      set_genre
    end

    def edit
      set_genre
    end

    def update
      set_genre.update(genre_params)
      redirect_to genre_path(set_genre)
    end


  private

    def genre_params
      params.require(:genre).permit(:name)
    end

    def set_genre
      @genre = Genre.find(params[:id])
    end

end
