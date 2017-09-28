//___FILEHEADER___
//  Copyright <#Organization#> ___YEAR___. All rights reserved.
//

// MARK: Imports
import UIKit

// MARK: -
// MARK: Implementation
class ___FILEBASENAMEASIDENTIFIER___: UIViewController {
	// MARK: Nested types


	// MARK: Type properties


	// MARK: Type methods


	// MARK: -
	// MARK: Instance properties
	/**
	<#Description#>
	*/
	//TODO: Connect table in storyboard
	//TODO: Connect data source and delegate to this controller in storyboard
	@IBOutlet weak var myTable: UITableView!
	/**
	Can be used for alphabetically sorting table data source
	*/
	lazy var stringSortDesc = NSSortDescriptor(key: nil, ascending: true, selector: #selector(NSString.localizedStandardCompare(_:)))
	/**
	Stores the index path of the last selected table view cell
	*/
	var selectedCell: NSIndexPath?

	// MARK: -
	// MARK: View lifecycle
	/**
	Performs the following actions:
	- <#Description#>
	*/
	override func viewDidLoad() {
        super.viewDidLoad()
        // Custom actions

    }

	/**
	Performs the following actions:
	- <#Description#>

	Parameters:
	- animated: Appearance animation state
	*/
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		// Custom actions

	}

	/**
	Performs the following actions:
	- <#Description#>

	Parameters:
	- animated: Appearance animation state
	*/
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		// Custom actions

	}

	/**
	Performs the following actions:
	- <#Description#>

	Parameters:
	- animated: Disappearance animation state
	*/
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		// Custom actions

	}

	/**
	Performs the following actions:
	- <#Description#>

	Parameters:
	- animated: Disappearance animation state
	*/
	override func viewDidDisappear(_ animated: Bool) {
		super.viewDidDisappear(animated)
		// Custom actions

	}

	// MARK: -
	// MARK: Instance methods


	// MARK: -
	// MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.

    }


	// MARK: -
	// MARK: Interface changes
	override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
		super.viewWillTransition(to: size, with: coordinator)

		coordinator.animate(alongsideTransition: { [unowned self] _ in

		}, completion: { [unowned self] _ in
			self.adaptUI(to: UIApplication.shared.statusBarOrientation)
		})
	}


	/**
	Performs user interface adaptions on orientation changes.

	Parameters:
	- orientation: Current interface orientation
	*/
	/*override*/ func adaptUI(to orientation: UIInterfaceOrientation) {
		// Only uncomment when using MZIK framework
		// super.adaptUI(to: orientation)

		// Interface adaptions
	}

	// MARK: -
	// MARK: Memory management
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ___FILEBASENAMEASIDENTIFIER___: UITableViewDataSource, UITableViewDelegate {
	// MARK: Table view data source
	/**
	Sets the number of sections for the controller's table view.

	Parameters:
	- tableView: myTable

	Returns: <#Return value#>
	*/
 	func numberOfSections(in tableView: UITableView) -> Int {
		//TODO: Adapt as needed
		return 1
	}

	/**
	Sets the number of rows in each section for the controller's table view.

	Parameters:
	- tableView: myTable
	- section: Table view section whose number of rows needs to be set

	Returns: <#Return value#>
	*/
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		//TODO: Adapt as needed
		return 1;
	}

	/**
	Sets the header titles for the different sections of the controller's table view.

	Parameters:
	- tableView: myTable
	- section: Table view section whose header title needs to be set

	Returns: Header title for the specified section
	*/
	func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		//TODO: Adapt as needed
		switch (section) {
		case 0:
			return nil;//localizedString(for:"") // Import MZIK framework
		default:
			return nil;
		}
	}

	/**
	Configures the cells of the controller's table view subject to section and row.

	Parameters:
	- tableView: myTable
	- indexPath: Index path for current section and row

	Returns: Cell for the current index path
	*/
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		//TODO: Adapt as needed
	    let cell = UITableViewCell()//tableView.dequeueReusableCell(withIdentifier:<#@"Cell-ID"#>)

		// Global cell configuration


		// Cell specific configuration


	    return cell
	}

	// MARK: Table view delegate
	/**
	<#Description#>

	Parameters:
	- tableView: myTable
	- indexPath: Index path for section and row of the selected cell
	*/
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		//TODO: Adapt as needed
		self.selectedCell = indexPath as NSIndexPath?

		// Perform cell specific actions if necessary
	}
}