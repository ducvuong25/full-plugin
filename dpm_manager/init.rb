Redmine::Plugin.register :dpm_manager do
  name 'Dpm Manager plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
  permission :view_polls, polls: :index

  menu :application_menu, :departments, { controller: 'departments', action: 'index' }, caption: 'departmenet Manager'

end
