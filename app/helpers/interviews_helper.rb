module InterviewsHelper
  
  def interview_header
    header = 'interviews'
    if params[:tag_id]
      header += " for #{params[:tag_id]}"
    elsif params[:user_id]
      header += " for #{@interviews[0].user.email}"
    elsif params[:project_id]
      header += " for #{@interviews[0].project.name}"
    elsif params[:role_id]
      header += " for #{@interviews[0].role.name}"
    end

    header
  end
end
