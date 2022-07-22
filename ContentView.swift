 //
//  ContentView.swift
//  Shop-manager
//
//  Created by Farhan on 22/7/22.
//

import SwiftUI
import WebKit


//main file starts here
struct ContentView: View {
    
  
    
    var body: some View {
        NavigationView{
            Starter()
                .offset(y: -60)
           
        }
        
    }
        
}

//ends here
   
        
 

//starter starts here
struct Starter: View {
    var body: some View {
        VStack{
            
            Spacer()
            Image("photo").padding(15.0)
            
            
            Button(action: {
                
                //functions goes there
                
            }, label: {
                NavigationLink(destination: web(), label: {Text("Launch App ").padding().background(Color.orange.blur(radius: 3.0)).foregroundColor(Color.black).font(.headline.bold())})
                
            })
            Spacer()
            
            Text("App Requires Internet Connection. ").padding().font(.headline.lowercaseSmallCaps())
            
            Spacer()
            }
     }
}

//ends here

//webview starts here

struct WebView: UIViewRepresentable {
    
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
  
}

//webview ends here

//web starts here
struct web: View {
    @State private var showWebView = false
    private let UrlString: String = "https://shop-comm.netlify.app/"
    
    var body: some View {
        VStack{
            WebView(url: URL(string: UrlString)!)
        }
    }
}

//ends here

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
