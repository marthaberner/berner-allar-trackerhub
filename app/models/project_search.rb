class ProjectSearch
  def search
    api_url = Faraday.get "https://www.pivotaltracker.com/services/v5/projects",
      {}, {"X-TrackerToken" => ENV["API_TOKEN"]}
    project_list = JSON.parse(api_url.body)

    project_list.map do |project|
      project["name"]
    end
  end
end