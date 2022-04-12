RailsAdmin.config do |config|

  # Popular gems integration

  ## Clearance
  config.authorize_with do |controller|
    unless current_user.admin?
      redirect_to(
        main_app.root_path,
        alert: "You are not permitted to view this page"
      )
    end
  end

  config.current_user_method { current_user }
end