class ProjectsController < ApplicationController

  def index
    repo = ProjectSearch.new
    @project_names = repo.search
  end
end