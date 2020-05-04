class DmemosController < ApplicationController

  def new
    @dmemo = Dmemo.new
  end
  
end
