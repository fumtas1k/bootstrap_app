module BlogsHelper
  def relative_post_datetime(created_at)
    sec = (Time.zone.now - created_at).round
    days = sec / (60 * 60 * 24)
    days_format = created_at.strftime("%m月%d日")
    return days_format unless days.zero?
    hours = sec / (60 * 60)
    return "#{hours}時間" unless hours.zero?
    mins = sec / (60)
    return "#{mins}分" unless mins.zero?
    "#{sec}秒"
  end

  def choose_new_or_edit
    if ["new", "create", "confirm"].include?(action_name)
      confirm_blogs_path
    elsif action_name == "edit"
      blog_path
    end
  end
end
