# SwiftUI Tabs

**SlidingTabView** is a simple Android-Like tab view that is built using the latest and greatest SwiftUI.

<p align="center">
<img src="https://lh6.googleusercontent.com/-hoaxgLRkVcj6zFMvGxSTrMgYlgeK2f2UA6NXJsFKQo9D9j9jXQ6r8CPFsljZKQh8hI=w2400" width="360" />
</p>

## Usage

Just instantiate and bind it to your state.

```swift
@State private var selectedTab: Int = 0
```

### Simple 
```swift
        Tabs(tabs:  ["Music", "Movies", "Books", "Games"],
             selectedTab: $selectedTab,
             content: {
                Text("Music").font(.system(size: 15)).foregroundColor(.black).tag(0)
                Text("Movies").tag(1)
                Text("Books").tag(2)
                Text("Games").tag(3)
             })
```

### Advanced 
```swift

        Tabs(tabs:  ["Music", "Movies", "Books", "Games"],
             selectedTab: $selectedTab,
             content: {
                Text("Music").font(.system(size: 15)).foregroundColor(.black).tag(0)
                Text("Movies").tag(1)
                Text("Books").tag(2)
                Text("Games").tag(3)
             },
             backgroundColor: .white,
             contentColor: .white,
             textColor: .black.opacity(0.4),
             activeTextColor: .black.opacity(0.8),
             barIndicatorColor: .blue.opacity(0.7),
             textSize: 16,
             padding: 15)
```

## Suggestions or feedback?
Feel free to create a pull request!

## Refer
https://github.com/QuynhNguyen/SlidingTabView 
