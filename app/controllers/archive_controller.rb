class ArchiveController < ApplicationController
  def index
    @pentries = Pentry.all.group_by(&:day)
  end
end
