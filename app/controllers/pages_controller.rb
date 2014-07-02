class PagesController < ApplicationController
  def calendar
    @contents = Content.all
    @contents_by_date = @contents.group_by {|i|
      if(i.event_datetime.nil?)
        #
      else
          i.event_datetime.to_date
      end
    }
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  def readlater

  end

  def info

  end
end
