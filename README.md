# Installation

Please read [Create new Flutter project](https://www.notion.so/roparat/Create-new-Flutter-project-61d5b25083914763879866de74479589?pvs=4) for the information about install pre-requisites and setup the project.

## Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install)

- [VSCode](https://code.visualstudio.com/download)

- [FVM](https://fvm.app/docs/getting_started/installation)

- Simulator or Device for testing

## What's inside this repo ? (Conclusion)

1. Firebase configuration

   Follow how to install Firebase configuration on the instructions [here](https://www.notion.so/roparat/Flutter-Firebase-Setup-d973cbca32134cc48c7177cb3e5a2619?pvs=4).

   **REMARK**: You can **skip** step `flutter pub add firebase_core` because this repo was included.

2. Shell Route

   This repo includes a basic shell route app that can use nested routes as well. See more at `shell_route.dart`

3. Flavor configuration

   This repo includes multiple flavor such as `development`, `staging` and `production`. So, you can run on different environment by

   ```
   flutter run --flavor <ENV> --target lib/main_<ENV>.dart
   ```

   assume `ENV` in one of flavor (ex. `development`).

4. (Optional) Firebase Cloud Messaging (FCM)

   We implemented a configuration for FCM to push a notification. So, you can merge branch `setup-notification-service(FCM)`.

   **REMARK**: Android is always working but iOS is needed to set up first
   [Here](https://www.notion.so/roparat/Flutter-Notification-with-FCM-214b2f6af2024cfebf1ec3d7426968b1?pvs=4) or [Official Document](https://firebase.google.com/docs/cloud-messaging/ios/client).

5. Utility Scripts

   We set up a utility script for run and build a project. See more on `How to Run & Use Dev Tools, Using Tasks in VSCode`

# Detailed

## Firebase Setup

Please install Firebase CLI and login to your account.

You can find the instructions [here](https://www.notion.so/roparat/Flutter-Firebase-Setup-d973cbca32134cc48c7177cb3e5a2619?pvs=4).

**REMARK**: You can **skip** step `flutter pub add firebase_core` because this repo was included.

---

## ShellRoute Template

```
src/
└── routes/
    ├── constants.dart - contains any route constants
    ├── shell_route.dart - initiate root routes (ex. Home, Business, Blog)
    └── [page] - folder that describe a route (ex. /home)/
        ├── page.dart - root page of this route
        ├── page_route.dart - contains route structure for index and sub routes
        ├── index.dart
        └── [sub_page] - sub route of parent (ex. /home/home-sub)/
            ├── sub_page.dart - sub page of its parent route
            ├── index.dart
            └── [sub_page_...] - can repeat route
```

---

## Flavor template

This repo included `development`, `staging` and `production` flavor.

Run below command with your prefer.

```bash

flutter  run  --flavor <flavor> --target  lib/main_<flavor>.dart

```

**Defined**: flavor is one of `development`, `staging` and `production` only.

---

## How to Run & Use Dev Tools

1. Select your flavor in the dropdown menu next to the green play button.

- There are 3 flavors in this project.

- "development" is the default flavor using for run and debug locally.

- "staging" is the flavor using for analyze performance. (this flavor's performance is the same as production)

- "production" is the flavor using for release to the app store.

- for Windows and Linux platform, please use "Launch without flavor" option to run the app.

- Note: you can custom configure your flavor to separate your app's environment.

2. To start the app, go to "Run and Debug" tab on the left side of VSCode, and click on the green play button.

3. After the app is started, you can use the dev tools to debug your app.

- To open the dev tools, open command palette (Cmd + Shift + P) and type "Dart: Open DevTools".

- Select your preferred tools to debug.

For more information of dev tools, you can find it on this VDO -> [Dive in to DevTools](https://youtu.be/_EYk-E29edo?si=tL76fPucoYZf7oAm)

## Using Tasks in VSCode

This project has provided tasks command for common scripts and to build app for each platform.

To use this command, please follow below steps.

1. Open command palette (Cmd + Shift + P) and

2. type "Tasks: Run Task".

3. Select your preferred task.

You can use tasks to run common scripts such as `flutter clean`, `flutter pub get`, or build app for each platform.

please see available tasks in `.vscode/tasks.json` file.
