class PickerDelegate
  def initialize(colors, *color_views)
    @color_views = color_views.map { |cv| WeakRef.new(cv) }
    @colors = colors
  end

  def numberOfComponentsInPickerView(picker_view)
    @color_views.count
  end

  def pickerView(picker_view, numberOfRowsInComponent: component)
    @colors.count
  end

  # def pickerView(picker_view, titleForRow: row, forComponent: component)
  #   @colors[row].label
  # end

  def pickerView(picker_view, viewForRow: row, forComponent: component, reusingView: old_color_view)
    (old_color_view || ColorView.new).tap do |cv|
      cv.color = @colors[row].color
      cv.text = @colors[row].label
    end
  end

  def pickerView(picker_view, didSelectRow: row, inComponent: component)
    @color_views[component].color = @colors[row].color
    @color_views[component].text = @colors[row].label
  end
end
