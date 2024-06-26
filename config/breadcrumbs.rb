crumb :root do
  link "Home", root_path
end

crumb :new_user do
  link "ユーザー新規登録", new_user_registration_path
  parent :root
end

crumb :users do
  link "ユーザーログイン", new_user_session_path
  parent :root
end

crumb :new_venue do
  link "新規会場投稿", new_venue_path
  parent :root
end

crumb :venues do
  link "会場詳細", venue_path
  parent :root
end

crumb :edit_venue do
  link "会場編集", venue_path
  parent :root
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