# Encoding: utf-8
#
# There is nothing really special here. This is the most basic way of
# getting started with page rendering to replace the default Rails root
# page and start stubbing out an other pages for design purposes.
class StaticPagesController < ApplicationController
  skip_before_action :authenticate!, only: :index
  # The homepage
  def index
  end

end
