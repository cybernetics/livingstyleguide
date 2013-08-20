require 'test_helper'
require 'tilt'

class MarkdownTest < Test::Unit::TestCase

  def test_standalone_project
    engine = parse_file('standalone/style.scss')
    css    = engine.render
    html   = engine.render_living_style_guide
    assert_match %r(background: red), css
    assert_match %r(<button class="button">), html
  end

end

