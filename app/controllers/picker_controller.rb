class PickerController < UIViewController
  def loadView
    self.view = PickerView.new

    view.picker.delegate = view.picker.dataSource = picker_delegate

    color_viewers.each do |cv|
      color = colors.sample
      cv.color = color.color
      cv.text = color.label
    end
  end

  private

  def colors
    ColorStore.all
  end

  def color_viewers
    [view.color_viewer_one, view.color_viewer_two, view.color_viewer_three]
  end

  def picker_delegate
    Dispatch.once { @picker_delegate = PickerDelegate.new(colors, *color_viewers) }
    @picker_delegate
  end
end
