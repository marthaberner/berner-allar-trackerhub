class ProjectSearch
  def search
    tracker_projects = Faraday.get "https://www.pivotaltracker.com/services/v5/projects",
      {}, {"X-TrackerToken" => ENV["API_TOKEN"]}
    project_list = JSON.parse(tracker_projects.body)

    project_list.map do |project|
      project["name"]
    end
  end
end