# leader-lidar
In this project I hosted a private GitLab server, Jenkins and JFrog Artifactory to implement a multibranch pipeline logic which deploys semantic versions of software releases based on the release branch in GitLab to Jfrog Artifactory.

## Infrastructure Diagram
![alt text](https://github.com/belisky/leader-lidar/blob/main/screenshots/Screenshot%20from%202022-12-16%2008-20-00.png?raw=true)
---

## GitLab SetUp
- The project required 4 repositories in a self-hosted gitlab Server,the repos are:
  - Telemetry - Depends on the latest version of Analytics to release its own latest version. | Has 3 branches namely:
    - feature/*
    - release/*
    - main
  - Analytics - Depends on the latest version of Telemetry to release its own latest version. | Has 3 branches namely:
    - feature/*
    - release/*
    - main
  - Product - Packages latest semantic releases of Analytics and Telemetry in JFrog Artifactory into a zip which is also semantically deployed to JFrog Artifactory. | Has only one branch
    - release/*
  - Testing - Tests artifacts deployed by the product pipeline into JFrog Artifactory | Has only one branch
    - main
 ---
 ### A peek at the GitLab Setup
![alt text](https://github.com/belisky/leader-lidar/blob/main/screenshots/Screenshot%20from%202022-12-14%2018-19-05.png?raw=true)
---

## Jenkins Setup
Since the repositories in gitlab are made of many branches, I implemented multibranch pipeline jobs for each GitLab repo using Jenkinsfile which is triggered upon every push to GitLab.
The multibranch pipelines for each Gitlab repo are:
- Analytics
- Telemetry
- Product
- Test_ing
![alt text](https://github.com/belisky/leader-lidar/blob/main/screenshots/Screenshot%20from%202022-12-14%2018-21-01.png?raw=true)
---

### A peek into Analytics Multi-Branch Pipeline (MBP)
![alt text](https://github.com/belisky/leader-lidar/blob/main/screenshots/Screenshot%20from%202022-12-14%2018-21-41.png?raw=true)

### A peek into Telemetry MBP
![alt text](https://github.com/belisky/leader-lidar/blob/main/screenshots/Screenshot%20from%202022-12-14%2018-21-54.png?raw=true)

### A peek into Product pipeline
![alt text](https://github.com/belisky/leader-lidar/blob/main/screenshots/Screenshot%20from%202022-12-14%2018-22-08.png?raw=true)

## JFrog SetUp & A peek into Released Artifacts in JFrog Artifactory
![alt text](https://github.com/belisky/leader-lidar/blob/main/screenshots/Screenshot%20from%202022-12-14%2018-18-20.png?raw=true)

## A peek into Telemetry release pipeline
![alt text](https://github.com/belisky/leader-lidar/blob/main/screenshots/Screenshot%20from%202022-12-14%2018-09-42.png?raw=true)
