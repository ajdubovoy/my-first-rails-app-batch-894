class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @members = ['claire', 'dareos', 'camila', 'dimitri']

    @query = params[:query]
    # params is a hash that's built in to Rails
    # if my url is like /contact?query=Claire
    # then params[:query] == "Claire"

    if @query
      # select is an iterator that gives you a smaller array
      # of only the elements that give you `true`
      @members = @members.select do |member|
        member.start_with? @query.downcase
      end
    end

  end
end
