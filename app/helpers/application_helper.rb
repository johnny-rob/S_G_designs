module ApplicationHelper

  def copyright_generator
    PinneyViewTool::Renderer.copyright 'Jonathan Pinney', 'All rights reserved.'
  end

end
