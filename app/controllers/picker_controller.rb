class PickerController < UIViewController
  def loadView
    self.view = PickerView.new

    [view.color_viewer_one, view.color_viewer_two].each do |cv|
      color = colors.sample
      cv.color = color.color
      cv.text = color.label
    end
  end

  private

  def colors
    ColorStore.all
  end
end
