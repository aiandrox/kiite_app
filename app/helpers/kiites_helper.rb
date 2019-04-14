module KiitesHelper
  def created_at_display(post)
    post.created_at.strftime('%Y.%m.%d %H:%M')
  end
end
