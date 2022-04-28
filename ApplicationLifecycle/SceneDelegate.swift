//
//  SceneDelegate.swift
//  ApplicationLifecycle
//
//  Created by Oleksandr Kachkin on 28.04.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

  var window: UIWindow?


  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    // Благодаря var window: UIWindow? у которого есть свойство var rootViewController: UIViewController? - можно определить какой экран запустить первым в обход сториборд.

    guard let _ = (scene as? UIWindowScene) else { return }
//    window?.rootViewController = SecondViewController()
    window?.rootViewController = UINavigationController(rootViewController: SecondViewController())
    
    print(#function)
  }

  func sceneDidDisconnect(_ scene: UIScene) {
    // Приложение закрыто
    // Вызывается, когда сцена освобождается системой.
    // Это происходит вскоре после того, как сцена переходит в фоновый режим, или когда ее сеанс сбрасывается.
    // Освобождаем все ресурсы, связанные с этой сценой, которые можно воссоздать при следующем подключении сцены.
    // Сцена может повторно подключиться позже, так как ее сеанс не обязательно был отброшен (вместо этого см. `application:didDiscardSceneSessions`).
    
    print(#function)
  }

  func sceneDidBecomeActive(_ scene: UIScene) {
    // Сцена стала активна
    // Часто используемый метод
    // Вызывается, когда сцена перешла из неактивного состояния в активное.
    // Используйте этот метод для перезапуска любых задач, которые были приостановлены (или еще не запущены), когда сцена была неактивна.
    
    print(#function)
  }

  func sceneWillResignActive(_ scene: UIScene) {
    // Сцена собирается стать неактивной
    // Часто используемый метод
    // Вызывается, когда сцена переходит из активного состояния в неактивное состояние.
    // Это может произойти из-за временных прерываний (например, входящего телефонного звонка, пришла СМС, нажатие кнопки Home).
    
    print(#function)
  }

  func sceneWillEnterForeground(_ scene: UIScene) {
    // Сцена собирается вернуться на передний план
    // Вызывается при переходе сцены с фона на передний план.
    // Может быть использовано для отмены изменений, выполненных при воде в фоновый режим
    // Вызывается перед методом sceneDidBecomeActive
    
    print(#function)
  }

  func sceneDidEnterBackground(_ scene: UIScene) {
    // Сцена стала неактивной
    // Вызывается при переходе сцены с переднего плана на задний.
    // Используйте этот метод для сохранения данных, высвобождения общих ресурсов и хранения достаточного количества информации о состоянии сцены, чтобы вернуть сцену в ее текущее состояние.
    
    print(#function)
  }


}

