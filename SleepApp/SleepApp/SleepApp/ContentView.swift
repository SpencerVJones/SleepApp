//  ContentView.swift
//  SleepApp
//  Created by Spencer Jones on 6/16/25

import CoreML
import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date.now
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    @State private var showAlert = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color(red: 0.50, green: 0.90, blue: 1.05),
                        Color(red: 0.30, green: 0.5, blue: 0.75)
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .edgesIgnoringSafeArea(.all)
                
                VStack (spacing: 20) {
                    
                    Image(systemName: "moon.zzz.fill")
                        .resizable()
                        .frame(width: 85, height: 100)
                        .foregroundStyle(Color.black.opacity(0.8))
                    
                    Text("Optimize your sleep")
                        .font(.subheadline.bold())
                    
                    VStack {
                        Text("When do you want to wake up?")
                            .font(.headline)
                            .padding(.vertical, 8)
                        
                        DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                            .labelsHidden()
                            .padding(.bottom, 8)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical)
                    .background(Color.white.opacity(0.2))
                    .cornerRadius(20)
                    
                    VStack {
                        Text("Desired amount of sleep")
                            .font(.headline)
                            .padding(.vertical, 8)
                        
                        Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                            .padding(.horizontal, 50)
                            .padding(.bottom, 8)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical)
                    .background(Color.white.opacity(0.2))
                    .cornerRadius(20)
                    
                    VStack {
                        Text("Daily Coffee Intake")
                            .font(.headline)
                            .padding(.vertical, 8)
                        
                        Stepper("\(coffeeAmount) cups", value: $coffeeAmount, in: 0...10, step: 1)
                            .padding(.horizontal, 50)
                            .padding(.bottom, 8)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical)
                    .background(Color.white.opacity(0.2))
                    .cornerRadius(20)
                    
                    
                    Button {
                        calculateBedTime()
                    } label: {
                        Text("Calculate")
                    }
                    .padding()
                    .foregroundStyle(Color.white)
                    .background(Color.black.opacity(0.6))
                    .cornerRadius(20)
                    
                    
                    
                }
                .padding()
                .navigationTitle("BetterRest")

                .alert(alertTitle, isPresented: $showAlert) {
                    Button("OK") {}
                } message: {
                    Text(alertMessage)
                }
            }
        }
    }
    
    func calculateBedTime() {
        do {
            let config = MLModelConfiguration()
            let model = try SleepCalculator(configuration: config)
            
            let componets = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
            let hour = (componets.hour ?? 0) * 60 * 60
            let minute = (componets.minute ?? 0) * 60
            
            let prediction  = try model.prediction(wake: Double(hour + minute), estimatedSleep: Double(sleepAmount), coffee: Double(coffeeAmount))
            
            let sleepTime = wakeUp - prediction.actualSleep
            
            
            alertTitle = "Your ideal bedtime is..."
            alertMessage = sleepTime.formatted(date: .omitted, time: .shortened)
            
        } catch {
            // Something went wrong
            alertTitle = "Error"
            alertMessage = error.localizedDescription
        }
        showAlert = true
    }
}

#Preview {
    ContentView()
}
