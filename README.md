# ios-swinject-storyboard-demo

## 1. import する
```
import Swinject
import SwinjectStoryboard
```

## 2. Containerのインスタンスを生成

```
    let container = Container()
```

## 3. AnimalViewControllerにCatオブジェクト(Animalプロトコル)と関連付ける

```
        container.storyboardInitCompleted(AnimalViewController.self) { r, c in
            c.animal = r.resolve(Animal.self)
        }
        container.register(Animal.self) { _ in Cat(name: "串田") }
```        
    
## 4. Storyboardを呼び出す

```
        let sb = SwinjectStoryboard.create(name: "Main",
                                           bundle: nil,
                                           container: container)
        let vc = sb.instantiateViewController(withIdentifier: "AnimalViewController")
            as! AnimalViewController
        self.present(vc, animated: true, completion: nil)
```
