class PickerDelegate
  def initialize(colors, *color_viewers)
    @color_viewers = color_viewers.map { |cv| WeakRef.new(cv) }
    @colors = colors
  end

  def numberOfComponentsInPickerView(_)
    @color_viewers.count
  end

  def pickerView(_, numberOfRowsInComponent: _)
    @colors.count
  end

  # def pickerView(picker_view, titleForRow: row, forComponent: component)
  #   @colors[row].label
  # end

  def pickerView(_, viewForRow: row, forComponent: _, reusingView: old_view)
    (old_view || ColorView.new).tap do |cv|
      cv.color = @colors[row].color
      cv.text = @colors[row].label
    end
  end

  def pickerView(_, didSelectRow: row, inComponent: component)
    @color_viewers[component].color = @colors[row].color
    @color_viewers[component].text = @colors[row].label
  end
end
