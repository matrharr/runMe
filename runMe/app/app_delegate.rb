class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = UIViewController.alloc.init
    rootViewController.title = 'runMe'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    @workoutcontroller = WorkoutController.alloc.initWithNibName(nil, bundle:nil)
    navigationController = UINavigationController.alloc.initWithRootViewController(@workoutcontroller)

    # places_list_controller = PlacesListController.alloc.init
    # navigationController = UINavigationController.alloc.initWithRootViewController(places_list_controller)


    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    true
  end
end
