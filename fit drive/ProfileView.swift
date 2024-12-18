import SwiftUI

struct ProfileView: View {
    @AppStorage("name") private var name: String = ""
    @AppStorage("age") private var age: Int = 0
    @AppStorage("height") private var height: Double = 0.0
    @AppStorage("weight") private var weight: Double = 0.0
    @State private var profileImage: UIImage? = UIImage(systemName: "person.crop.circle")
    @State private var showImagePicker: Bool = false

    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Button(action: {
                    showImagePicker = true
                }) {
                    if let profileImage = profileImage {
                        Image(uiImage: profileImage)
                            .resizable()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.blue, lineWidth: 2))
                            .shadow(radius: 5)
                    } else {
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .foregroundColor(.gray)
                            .clipShape(Circle())
                            .shadow(radius: 5)
                    }
                }
                .padding()

                Spacer()

                Form {
                    Section(header: Text("Personal Details")) {
                        TextField("Name", text: $name)
                        TextField("Age", value: $age, formatter: NumberFormatter())
                            .keyboardType(.numberPad)
                    }

                    Section(header: Text("Body Metrics")) {
                        TextField("Height (in meters)", value: $height, formatter: NumberFormatter())
                            .keyboardType(.decimalPad)
                        TextField("Weight (in kilograms)", value: $weight, formatter: NumberFormatter())
                            .keyboardType(.decimalPad)

                        if height > 0 {
                            let bmi = weight / (height * height)
                            Text("Your BMI: \(String(format: "%.2f", bmi))")
                                .font(.headline)
                                .foregroundColor(.green)
                        }
                    }
                }
                Spacer()
            }
            .navigationTitle("Profile")
            .sheet(isPresented: $showImagePicker) {
                ImagePicker(image: $profileImage)
            }
        }
    }
}
