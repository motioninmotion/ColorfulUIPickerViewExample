class PickerView < UIView
  attr_reader :color_viewer_one, :color_viewer_two, :color_viewer_three, :picker

  def init
    super

    setBackgroundColor UIColor.whiteColor

    addSubview(@color_viewer_one = ColorView.new)
    addSubview(@color_viewer_two = ColorView.new)
    addSubview(@color_viewer_three = ColorView.new)
    addSubview(@picker = UIPickerView.new)

    @color_viewer_one.frame = [[20, 40], [125, 125]]
    @color_viewer_two.frame = [[165, 40], [125, 125]]
    @color_viewer_three.frame = [[165, 180], [125, 125]]
    @picker.frame = [[0, 406], [320, 162]]

    self
  end
end
