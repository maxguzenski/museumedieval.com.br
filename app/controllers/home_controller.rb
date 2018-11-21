class HomeController < ApplicationController
  def show
    @comments = MuseumComment.approved.all :limit => 2
  end
end
