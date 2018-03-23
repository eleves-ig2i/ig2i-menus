class PagesController < ApplicationController
  def dashboard
    @menus = Menu.where('ended_at > ? AND published_at < ?', Time.zone.now, Time.zone.now)
    @menus = @menus.order(:date)
    @menus = @menus.to_a
  end
end
