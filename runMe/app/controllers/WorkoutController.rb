class WorkoutController < UIViewController
  def viewDidLoad
    super

    self.title = "Testing"

    self.view.backgroundColor = UIColor.whiteColor

    @text_field = UITextField.alloc.initWithFrame [[0,0], [160, 26]]
    @text_field.textAlignment = UITextAlignmentCenter
    @text_field.autocapitalizationType = UITextAutocapitalizationTypeNone
    @text_field.borderStyle = UITextBorderStyleRoundedRect
    @text_field.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2 - 100)
    self.view.addSubview @text_field

    @search = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @search.setTitle('Search', forState:UIControlStateNormal)
    @search.sizeToFit
    @search.center = CGPointMake(self.view.frame.size.width/2, @text_field.center.y + 40)

    self.view.addSubview(@search)


    @search.when(UIControlEventTouchUpInside) do
      Workout.find
    end

  end



end