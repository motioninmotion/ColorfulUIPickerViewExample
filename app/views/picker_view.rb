class PickerView < UIView
  attr_reader :color_viewer_one, :color_viewer_two

  def init
    super

    setBackgroundColor UIColor.whiteColor

    addSubview(@color_viewer_one = ColorView.new)
    addSubview(@color_viewer_two = ColorView.new)

    @color_viewer_one.frame = [[20, 40], [125, 125]]
    @color_viewer_two.frame = [[165, 40], [125, 125]]

    self
  end
end
