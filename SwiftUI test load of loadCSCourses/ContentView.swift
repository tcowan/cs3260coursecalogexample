//
//  Course Catalog Example Code
//
//  Created by Ted Cowan on 5/24/22.
//


/*
 This app contains example code for accessing the coursesDict dictionary
 populated by the function loadCScourses().  The course IDs and
 short descriptions are displayed in a List view
 */

import SwiftUI

struct ContentView: View {

    /*
     the init() function is only called once before the view is displayed
     the first time and is a convenient place in the app logic to populate
     coursesDict by calling loadCSCourses()
     */
    init() {
        loadCSCourses()
    }
    
    var body: some View {
        /*
         here we create an array of all the keys of the coursesDict
         dictionary to facilitate creating a List view.
         
         You might notice the keys or course IDs are in a
         somewhat random order.  How would we sort them?
         */
        let keys = Array(coursesDict.keys)

        /*
         A List view is created and populated with a ForEach statement
         that iterates across all of the keys.
         */
        List {
            ForEach(keys, id: \.self) {
                k in
                /*
                 I inserted the alignment keyword to left align the two text
                 entries I am about to output 
                 */
                VStack (alignment: .leading) {

                    /*
                     the first object in the list view is the course ID
                     e.g. "CS 1030".  Title3 is the font size that I used
                     and looks pretty good.
                     */
                    Text(k)
                        .font(.title3)
                    
                    /*
                     Since courseDict is a dictionary of dictionaries,
                     every value returned fom a dictionary is an Optional
                     and must be unwrapped or marked as automatically
                     unwrapped with a ! (exclamation point).
                     
                     I decided to unwrap the dictionary for each course with an
                     if let and I unwrap the short description value with
                     a sedond if let using the key created from the
                     first if let.
                     
                     If both if let statements return a value, a Text object
                     is created right underneath the course ID
                     
                     Subheadline is a smaller font than title3 and looks
                     ok in this instance.
                     */
                    if let cd = coursesDict[k] {
                        if let sdmaybe = cd["ShortDescription"] {
                            Text(sdmaybe)
                                .font(.subheadline)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
