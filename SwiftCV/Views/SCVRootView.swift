//
//  SCVRootView.swift
//  SwiftCV
//
//  Created by Gale Williams on 9/18/26.
//

import SwiftUI

struct SCVRootView: View {

		// TODO: - Make selectedTab into a proper enum for this with switch self persistence through @AppStorage

		// TODO: - Consider a two-column NavigationSplitView with the Sidebar listing Resumes and then the Detail column could hold the TabView and the first tab could be for Headers and Resume info and actions..?

	@State private var selectedTab: Int = 0

	var body: some View {

		TabView(selection: $selectedTab) {
			Tab(value: 0) {
				SCVResumesTabView()
			} label: {
				Text("Resumes")
			}
		}

		// TODO: - Add tab for headers/contact/links? Then titles go per-resume..? not sure, might try multiple options...


		TabView(selection: $selectedTab) {
			Tab(value: 1) {
				SCVExperienceTabView()
			} label: {
				Text("Resumes")
			}
		}
		TabView(selection: $selectedTab) {
			Tab(value: 2) {
				SCVEducationTabView()
			} label: {
				Text("Resumes")
			}
		}

    }
}

#Preview {
    SCVRootView()
}
