crumb :root do
  link "Панель управления", dashboard_path
end

crumb :players do
  link "Игроки", players_path
end

crumb :player do |player|
  link player.id, player
  parent :players
end

crumb :crews do
  link "Команды", crews_path
end

crumb :crew do |crew|
  link crew.id, crew
  parent :crews
end

crumb :games do
  link "Игры", games_path
end

crumb :game do |game|
  link game.id, game
  parent :games
end
# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).