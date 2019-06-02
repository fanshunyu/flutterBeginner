# Flutter 豆瓣电影项目

A new Flutter project.

## Getting Started

### 1. Flutter SDK

Flutter 开发需要安装 Flutter SDK

### 2. Flutter IDE

安装完 Flutter SDK 后，想要开发 Flutter，还需要 IDE ，可以开发 Flutter 的 IDE 有两个：

- Android Studio
- VS Code

我用的vs Code

 配置 Flutter 中国镜像

在搭建 Flutter 环境之前，因为众所周知的原因，有可能被墙，所以需要先为 Flutter 配置中国镜像。

### 中国镜像地址

国内有两个镜像可以用，一个就是官方 Flutter 社区的国内镜像，另一个是上海交通大学 Linux 用户组的镜像，建议用官方 Flutter 社区的国内镜像。

- Flutter 社区

  FLUTTER_STORAGE_BASE_URL: `https://storage.flutter-io.cn`

  PUB_HOSTED_URL: `https://pub.flutter-io.cn`

- 上海交通大学 Linux 用户组

  FLUTTER_STORAGE_BASE_URL: `https://mirrors.sjtug.sjtu.edu.cn`

  PUB_HOSTED_URL: `https://dart-pub.mirrors.sjtug.sjtu.edu.cn`

### 配置方法

需要设置两个环境变量：`PUB_HOSTED_URL` 和 `FLUTTER_STORAGE_BASE_URL`。

1. `计算机` -> `属性` -> `高级系统设置` -> `环境变量`，打开环境变量设置框。

2. 在用户变量下，选择`新建环境变量`，添加如下的两个环境变量和值：

   | 变量名                      | 值                               |
   | ------------------------ | ------------------------------- |
   | FLUTTER_STORAGE_BASE_URL | `https://storage.flutter-io.cn` |
   | PUB_HOSTED_URL           | `https://pub.flutter-io.cn`     |

### 搭建 Android 开发环境

为了 Flutter 可以编译成 Android APK，和运行在 Android 模拟器上，需要搭建 Android 开发环境。

安装 Android Studio，安装成功后，会自带 Android SDK。

Androdi Studio 的下载地址有三个，选一个可以下载的地址：

- 官方地址：[developer.android.com/studio](https://link.juejin.im/?target=https%3A%2F%2Fdeveloper.android.com%2Fstudio)
- 官方中文地址：[developer.android.google.cn/studio/](https://link.juejin.im/?target=https%3A%2F%2Fdeveloper.android.google.cn%2Fstudio%2F)
- 国内第三方地址：[www.androiddevtools.cn/](https://link.juejin.im/?target=https%3A%2F%2Fwww.androiddevtools.cn%2F)

#### 配置 Android SDK 环境变量

打开 Android Studio，选择 `Confiure` -> 'SDK Manager'

在打开的窗口中就能看到 Android SDK 的路径

#### 创建 Android 模拟器

打开 Android Studio，选择 `Confiure` -> 'AVD Manager'

在打开的页面里点击 `Create Virtual Device...`

在 `Phone` 里选择一个设备，这里选择 Pixel 2 XL

然后一直点击 Next，就成功创建了 Android 模拟器。

1. `计算机` -> `属性` -> `高级系统设置` -> `环境变量`，打开环境变量设置框。
2. 在用户变量下，选择 `Path`，点击编辑,添加上 `;(替换成 Android SDK 路径)/tools;(替换成 Android SDK 路径)/platform-tools`

### 下载 Flutter SDK

1. 你可以在 [Flutter SDK](https://link.juejin.im/?target=https%3A%2F%2Fflutter.dev%2Fdocs%2Fdevelopment%2Ftools%2Fsdk%2Farchive%3Ftab%3Dwindows) 的下载页面，选择你想要的版本，一般选择稳定版的，目前最新的稳定版是 [v1.5.4-hotfix.2](https://link.juejin.im/?target=https%3A%2F%2Fstorage.googleapis.com%2Fflutter_infra%2Freleases%2Fstable%2Fwindows%2Fflutter_windows_v1.5.4-hotfix.2-stable.zip)。
2. 将 Flutter SDK 的 zip 包解压到一个目录下，例如 `E:\src\flutter`（目录随意，但是不要放在需要权限的目录下，例如 `C:\Program Files\` ）

### 设置 Flutter SDK 的环境变量

1. `计算机` -> `属性` -> `高级系统设置` -> `环境变量`，打开环境变量设置框。

2. 在用户变量下，选择 `Path`，点击编辑：

   - 如果已经存在 `Path`变量，则在原有的值后面先加 `;`，然后将 Flutter SDK 的完整路径 `E:\src\flutter\bin` 添加上。
   - 如果没有 `Path` 变量，则新建一个名为 `Path` 的用户变量，然后将 Flutter SDK 的完整路径 `E:\src\flutter\bin` 添加上。

   编辑完成后，点击确定。

### 运行 flutter doctor

为了验证 Flutter 是否安装成功，在 cmd 运行：

```
flutter doctor

```

如果看到输出如下的结果：

```
C:\Users\Administrator>flutter doctor
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, v1.5.4-hotfix.2, on Microsoft Windows [Version 6.1.7601], locale zh-CN)
[✓] Android toolchain - develop for Android devices (Android SDK 27.0.3)
[✓] Android Studio (version 3.1)
[!] Connected device 
    ! No devices available

! Doctor found issues in 1 categories.

```

说明，Flutter SDK 已经安装成功。但是也可能遇到 Flutter 的报错，请按照报错的提示修复，例如：

- Some Android licenses not accepted（Android证书的问题）

  运行 `flutter doctor --android-licenses` 修复

### VS Code

VS Code 是一个轻量级编辑器，支持 Flutter 的开发。

#### 安装 VS Code

版本要求：

- [VS Code](https://link.juejin.im/?target=https%3A%2F%2Fcode.visualstudio.com%2F) 最新稳定版

#### 安装 Flutter 插件

1. 打开 VS Code。

2. 点击 **View > Command Palette…** 或者快捷键 **Shift+cmd+P**(MacOS) /**Ctrl+Shift+P**(Windows、Linux)，打开命令面板。

3. 输入 **install**, 选择 **Extensions: Install Extensions**，如下图：

   ​

   ![img](https://user-gold-cdn.xitu.io/2019/2/16/168f4317aa5711ce?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)

   ​

4. 在 **Extensions** 的搜索框里输入 **Flutter**,如下图：

   ​

   ![img](https://user-gold-cdn.xitu.io/2019/2/16/168f442d0a5c25f8?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)

   ​

5. 选择 **Flutter** 并点击 **Install**。

   ​

   ![img](https://user-gold-cdn.xitu.io/2019/3/19/169936fdfca764a7?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)

   ​

6. 安装完后，在点击 **Reload**，重启 VS Code，如下图：

   ​

   ![img](https://user-gold-cdn.xitu.io/2019/3/19/1699370e89aea497?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)

   ​

7. 点击 **View > Command Palette…**，或者快捷键 **Shift+cmd+P**(MacOS) /**Ctrl+Shift+P**(Windows、Linux)，打开命令面板。输入 **Flutter** ，如果看到如下图的 Flutter 命令，说明安装成功



## 使用 VS Code 创建第一个 Flutter APP

这里使用 VS Code 带你创建第一个 Flutter APP。

### 创建 Flutter 项目

在 VS Code 中，点击 **View > Command Palette…**，或者快捷键 **Shift+cmd+P**(MacOS) /**Ctrl+Shift+P**(Windows、Linux)，打开命令面板,输入 **Flutter**

会出现下图：

![img](https://user-gold-cdn.xitu.io/2019/2/16/168f5368f5ecc67b?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)

选择 **Flutter: New Project**,会弹出如下的框：

![img](https://user-gold-cdn.xitu.io/2019/3/19/1699452f3795bd0d?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)

然你输入 Flutter 工程的名字，你可以自己起一个，例如： `hello_world`。输入 Flutter 工程的名字后，回车，会弹出如下的框：

![img](https://user-gold-cdn.xitu.io/2019/3/19/1699455c6581d44d?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)

选择好工程的路径，点击右下角的 **Select a folder to create the project in**，第一个 Flutter APP 就创建完成了，创建完的 Flutter APP 里有默认实现的代码。

这里相比 Android Studio 少了设置 Android 包名的步骤，所以用 VS Code 创建的 Flutter APP 的 Android 包名用的是默认的。

> VS Code 实质是一款代码编辑器，如果你用过 Sublime 的话，应该就很熟悉，最重要的是记住命令面板 的快捷键：Shift+cmd+P(MacOS) /Ctrl+Shift+P(Windows、Linux)，很多功能需要在命令面板中使用。

### 运行 Flutter APP

创建完 Flutter APP 的工程后，工程里面有默认的实现，我们可以直接运行 Flutter APP，但在运行 Flutter APP 之前，首先要打开模拟器，或者连接真机。

#### 打开 Android/iOS 模拟器

在 VS Code 的底部工具栏里会看到如下图：

![img](https://user-gold-cdn.xitu.io/2019/2/16/168f542daf2ad352?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)

点击红框内的 **No Devices** ，会看到如下图：

![img](https://user-gold-cdn.xitu.io/2019/2/16/168f54431aeee666?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)

选择一个，打开模拟器。

在 MacOS 上，可以选择 iOS 模拟器，也可以选择 Android 模拟器。 在 Windows 和 Linux 上，只能选择 Android 模拟器。

#### 运行Flutter APP

VS Code 有两种方式运行 Flutter APP：

- Start Debugging
- Start Without Debugging

#### Start Debugging

点击 **Debug > Start Debugging**。

这个模式下加了调试器，如果有断点，可以跟进调试代码。

#### Start Without Debugging

点击 **Debug > Start Without Debugging**。

这个模式下没有调试器，就是启动已经编译好的程序。

运行的效果如下图：

iOS模拟器：

![img](https://user-gold-cdn.xitu.io/2019/4/9/169ffe6cbef3d738?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)

Android 模拟器：

![img](https://user-gold-cdn.xitu.io/2019/4/9/169ffe84125dcfbd?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)

可以看到 iOS 里的 TitleBar 的文字是居中的，Android 里的 TitleBar 的文字是居左的，运行的是同一份代码，Flutter UI 可以自动根据平台来适配，完全不用我们担心适配的问题。

### Flutter 的调试信息

Flutter 运行之后，可以在 VS Code 的下方看到调试信息：

![img](https://user-gold-cdn.xitu.io/2019/3/19/169960db66608ec6?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)

### Flutter 入口文件

在创建完 Flutter APP 之后，就可以开始 Flutter 的开发了，那么代码应该写在哪里，APP 是从哪里开始运行的呢？

所以我们有必要先看一下 Flutter 代码的入口文件及入口函数。

Flutter 入口文件是 `main.dart`，入口文件的名字必须是 `main.dart`，不能更改，在 Flutter 工程的 lib 目录下：

![img](https://user-gold-cdn.xitu.io/2019/3/19/169959e359383e2b?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)

### Flutter 入口函数

打开 `main.dart` ：

![img](https://user-gold-cdn.xitu.io/2019/3/19/16995a6d0f3a3e12?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)

这里的 `main()` 函数就是 Flutter 的入口函数。

在 `main()` 函数里要运行 `runApp()` 函数，`runApp()`函数的参数类型是 Widget 类型。使用的方法如下：

```
void main() => runApp(MyApp());

```

这个使用方法是固定的。

## pubspec.yaml 介绍

pubspec.yaml 是 Flutter 工程的配置文件，使用 `YAML` 语言来写，下面是一个 Flutter 工程的 pubspec.yaml :

```
name: flutter_doubanmovie
description: A new Flutter project.

version: 1.0.0+1

authors:
- Natalie Weizenbaum <nweiz@google.com>
- Bob Nystrom <rnystrom@google.com>

homepage: https://flutter.dev/

environment:
  sdk: ">=2.1.0 <3.0.0"

dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^0.1.2
  http: ^0.12.0+2
  shared_preferences: ^0.5.2

dev_dependencies:
  flutter_test:
    sdk: flutter

flutter:

  uses-material-design: true

```

下表是 pubspec.yaml 支持的字段：

| 字段名                  | 含义                                       | 可选/必选                                    |
| -------------------- | ---------------------------------------- | ---------------------------------------- |
| name                 | 工程的名字                                    | 必选                                       |
| description          | 工程的描述                                    | 想要发布到 [Pub](https://link.juejin.im/?target=https%3A%2F%2Fpub.dev%2F) 上，就是必须的 |
| version              | 工程的版本号                                   | 想要发布到 [Pub](https://link.juejin.im/?target=https%3A%2F%2Fpub.dev%2F) 上，就是必须的 |
| author or authors    | 作者名字                                     | 可选                                       |
| homepage             | 主页                                       | 可选                                       |
| environment          | 指定 Dart 的版本，因为 随着时间的推移，Dart 不断发展，一个软件包可能只适用于某些版本的平台。 | 必选                                       |
| repository           | 指向工程的源代码的地址                              | 可选                                       |
| issue_tracker        | 指向跟踪工程issue的地址                           | 可选                                       |
| documentation        | 指向工程文档的地址                                | 可选                                       |
| dependencies         | 依赖的开发库                                   | 如果你的工程没有依赖的话，可以省略                        |
| dev_dependencies     | 依赖的测试库                                   | 如果你的工程没有依赖的话，可以省略                        |
| dependency_overrides | 在开发过程中，您可能需要暂时覆盖依赖项。                     | 如果你的工程不需要要覆盖依赖的话，可以省略                    |
| executables          | 用于将包的可执行文件放在PATH上：可以将其一个或多个脚本公开为可以直接从命令行运行的可执行文件。 | 可选                                       |
| publish_to           | 指定发布包的位置，默认是 [Pub](https://link.juejin.im/?target=https%3A%2F%2Fpub.dev%2F) | 可选                                       |
| flutter              | flutter 资源相关的配置，包括图片、字体等，后面会有具体场景        | 必选                                       |

## 使用 Hot Reload 的步骤

1.连接真机或虚拟机，运行 Flutter APP，且必须以 Debug 模式启动。因为只有 Debug 模式才能使用 Hot Reload。

2.修改 Flutter APP 工程里的 Dart 代码，但并不是所有 Dart 代码的修改都可以使用 Hot Reload，有一些情况下 Hot Reload 并不能生效，只能使用 Hot Restart（重新启动）。

3.然后使用快捷键 **ctrl+s**（Windows、Linux）或者 **cmd+s**（MacOS），或者点击 Hot Reload 的按钮。就完成了 Hot Reload 的操作，Hot Reload 成功后，会在 Debug Consol 中看到输出如下类似的消息：

```
Reloaded 1 of 419 libraries in 1,165ms.

```

![img](https://user-gold-cdn.xitu.io/2019/3/19/169962124fc8cc37?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)

## Hot Reload 的工作原理

Hot Reload 只能在 Debug 模式下使用，是因为 Debug 模式下，Flutter 采用的是 JIT 动态编译，代码是运行在 Dart VM 上，JIT 将 Dart 编译成可以运行在 Dart VM 上的 Dart Kernel，Dart Kernel 可以动态更新，所以就实现了代码的实时更新功能。

当调用 Hot Reload 时：

1. 首先会扫描代码，找到上次编译之后有变化的 Dart 代码。
2. 在将这些变化的 Dart 代码转化为增量的 Dart Kernel 文件。
3. 将增量的 Dart Kernel 文件发送到正在移动设备上运行的 Dart VM。
4. Dart VM 会将发来的增量 Dart Kernel 文件和原有的 Dart Kernel 文件合并，然后重新加载全新的 Dart Kernel。
5. 这个时候，虽然重新加载了 Dart Kernel，**却不会重新执行代码**，而是通知 Flutter Framework 重建 Widget。

所以 Flutter 的 Hot Reload 并不会重新执行一遍代码，而是触发 Flutter 重新绘制，并且会保留 Flutter 之前的状态，所以 Hot Reload 也被称为有状态的热重载。

这里你可能会有点难以理解，什么是重建 Widget？什么是状态？没有关系，后面都会讲到，你可以继续往下看。

## 不能使用 Hot Reload 的场景

在理解了 Hot Reload 的原理之后，可以看到 Hot Reload 的使用场景是有一些限制的，接下来我们在看一下不能使用 Hot Reload的 场景（这里可能会有你不太理解的内容，那你可以大致看一下，有个印象，等你看完后面的内容，在来看这部分内容，就会好理解了）：

#### 1. 代码出现编译错误的不能使用 Hot Reload

当代码更改引入编译错误时，肯定不能使用 Hot Reload。

所以要先解决编译错误，在使用 Hot Reload。

#### 2. 代码更改会影响 APP 状态的不能使用 Hot Reload

如果你的代码更改会影响 APP 的状态，使得代码更改之后的状态和代码更改之前的状态不一样，那么 Hot Reload 就不会生效，例如：

```
class MyWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () => print('T'));
  }
}

```

这段代码，运行 App 之后，将 **StatelessWidget** 改为 **StatefulWidget**：

```
class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => MyWidgetState();
}

class MyWidgetState extends State<MyWidget> { /*...*/ }

```

因为 Hot Reload 会保留状态，在代码更改之前，`MyWidget` 是 **StatelessWidget** ，将 **StatelessWidget** 改为 **StatefulWidget** ，如果 Hot Reload 成功，那么 `MyWidget` 会变成 **StatefulWidget** ，与它之前的状态就会不兼容的，所以 Hot Reload 是不会成功的。

#### 3. 全局变量（ global variables）和静态字段（static fields）的更改不能使用 Hot Reload

在 Flutter 中，全局变量和静态字段被视为状态，因此在 Hot Reload 期间不会重新初始化。

如下的代码：

```
final sampleTable = [
  Table("T1"),
  Table("T2"),
  Table("T3"),
  Table("T4"),
];

```

运行 App 之后，如果做了如下的更改：

```
final sampleTable = [
  Table("T1"),
  Table("T2"),
  Table("T3"),
  Table("T10"),    // 修改这里的值
];

```

运行 Hot Reload，是不会成功的，所以全局变量和静态字段不能使用 Hot Reload。

#### 4. main() 方法里的更改不能使用 Hot Reload

因为 `main()` 方法不会因重建窗口小部件树而重新执行，所以更改 `main()` 方法里的代码，不会在 Hot Reload 之后看到效果。

例如，如下的代码：

```
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () => print('tapped'));
  }
}

```

在运行App后，更改如下：

```
import 'package:flutter/widgets.dart';

void main() {
  runApp(const Center(
      child: const Text('Hello', textDirection: TextDirection.ltr)));
}

```

Hot Reload 之后，不会看到任何变化。

#### 5. 枚举类型更改为常规的类或者常规的类变为枚举类型也不能使用 HotReload

例如，如下的例子：

```
enum Color {
  red,
  green,
  blue
}

```

改为:

```
class Color {
  Color(this.i, this.j);
  final int i;
  final int j;
  }

```

#### 6. 修改通用类型声明也不能使用 HotReload

例如，如下的例子：

```
class A<T> {
  T i;
}

```

改为:

```
class A<T, V> {
  T i;
  V v;
}

```

## `Hot Reload` VS `Hot Restart`

针对上面不能使用 Hot Reload 的情况，就需要使用 Hot Restart。

Hot Restart 可以完全重启您的应用程序，但却不用结束调试会话。

#### Android Studio 里执行 Hot Restart

在 Android Studio 里，无需 stop，在 run 一下，就是 Hot Restart。

#### VS Code 里执行 Hot Restart

在 VS Code 里，打开命令面板，输入 **Flutter: Hot Restart ** 或者 直接快捷键 Ctrl+F5，就可以使用 Hot Restart。

## 总结

最适合 Hot Reload 的场景就是写布局的时候，如果是其他场景，尤其是写业务逻辑的时候，一不小心就会碰到无法使用 Hot Reload 的场景，所以当你发现 Hot Reload 不生效的时候，就使用 Hot Restart 吧，Hot Restart 也一样很快。