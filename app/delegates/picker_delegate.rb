class PickerDelegate
  def initialize(colors, *color_viewers)
    @color_viewers = color_viewers.map { |cv| WeakRef.new(cv) }
    @colors = colors
  end

  def numberOfComponentsInPickerView(picker_view)
    @color_viewers.count
  end

  def pickerView(picker_view, numberOfRowsInComponent: component)
    @colors.count
  end

  # def pickerView(picker_view, titleForRow: row, forComponent: component)
  #   @colors[row].label
  # end

  def pickerView(picker_view, viewForRow: row, forComponent: component, reusingView: old_view)
    (old_view || ColorView.new).tap do |cv|
      cv.color = @colors[row].color
      cv.text = @colors[row].label
    end
  end

  def pickerView(picker_view, didSelectRow: row, inComponent: component)
    @color_viewers[component].color = @colors[row].color
    @color_viewers[component].text = @colors[row].label
  end
end
