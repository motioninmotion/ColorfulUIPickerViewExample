class ColorView < UIView
  def init
    super
    addSubview(@label = UILabel.new)
    @label.textAlignment = NSTextAlignmentCenter
    self
  end

  def frame=(frame)
    super
    @label.frame = [[0, 0], [CGRectGetWidth(frame), CGRectGetHeight(frame)]]
  end

  def color=(color)
    setBackgroundColor UIColor.send("#{color}Color")
    p = Pointer.new(:float)
    white = backgroundColor.getWhite(p, alpha: nil)
    @label.textColor = UIColor.colorWithWhite(white, alpha: 1)
  end

  def text=(text)
    @label.text = text
  end
end
