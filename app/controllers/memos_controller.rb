class MemosController < ApplicationController
  def index
    @rposts = Rpost.all
  end

  def new
  end
end
