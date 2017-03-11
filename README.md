# ios-swinject-storyboard-demo
ViewController生成時に依存性を注入するサンプルです。
（画面遷移時にパラメタを渡す）

## 1. PodFile

```
pod 'Swinject', '2.0.0'
pod 'SwinjectStoryboard', '1.0.0'
```

## 2. import する
```
import Swinject
import SwinjectStoryboard
```

## 3. Containerのインスタンスを生成

```
    let container = Container()
```

## 4. AnimalViewControllerとCatオブジェクト(Animalプロトコル)を関連付ける

```
        container.storyboardInitCompleted(AnimalViewController.self) { r, c in
            c.animal = r.resolve(Animal.self)
        }
        container.register(Animal.self) { _ in Cat(name: "串田") }
```        
    
## 5. Storyboardを呼び出す

```
        let sb = SwinjectStoryboard.create(name: "Main",
                                           bundle: nil,
                                           container: container)
        let vc = sb.instantiateViewController(withIdentifier: "AnimalViewController")
            as! AnimalViewController
        self.present(vc, animated: true, completion: nil)
```
