import SwiftUI

@main struct SCVApp: App {

    var body: some Scene {

        WindowGroup {
			SCVRootView()
        }

		Settings {
			SCVSettingsView()
		}
    }
}
