# Branching Strategy-Git Lab Flow

| Author | Created on | Version | Last updated by | Last edited on |
| ------ | ---------- | ------- | --------------- | -------------- |
| Sahil Gupta | 31-03-2024 | version 1 | Sahil Gupta | 31-03-2024  |

## Table of Contents

| Sr.No  | Section                                   |
|:----:|-------------------------------------------|
| 1  | [Introduction](#introduction)             |   
| 2  | [Why](#why)                               |
| 3  | [Principles](#principles)                   |
| 4  | [GitLab Flow](#gitlab-flow)                      |
| 5  | [Advantages](#advantages)                                   |
| 6  | [Disadvantages](#disadvantages)       |
| 7  | [Conclusion](#conclusion)         |
| 8  | [Contact Information](#contact-information)   |
| 9  | [Reference](#reference)                   |

## Introduction

- Git allows you to create several development flows that meet the dynamics of your company.

- You can have an enhancement branch, a maintenance branch, a branch that freezes the code to be approved before going into production, while new tasks for the next release can already be done, etc ...

- When working as a team, it is important to have a well-defined Git flow, to not generate a complex and inefficient flow.

- You need to be sure that the team is in agreement on how the flow -will be applied.

- There are several cataloged workflows. There is no the best Git flow, there is the one that best suits the reality of your team.

## Why?

What can be considered a successful workflow?

- Does the workflow adapt to the size of the team ?

- Is it easy to undo mistakes with this workflow ?

- Does this workflow impose any unnecessary new overhead on the team ?

- GitLab flow tries to solve this problem by creating branches that represent the company's internal environments, there are more possibilities for testing and finding errors. Tests are carried out in all environments until the production branch is reached.

## Principles

- Create a new local branch for the task and periodically push a branch of the same name on the server.

- When the task is finished, request a Merge Request for the master branch.

- When the submitted changes were reviewed/approved, merge them with the master branch.

- Once in the master, the code must be integrated into the company's internal environments branches, until reaching the production branch.

- When being merged into the master, delete the branch where the task was developed leaving the repository more organized.

  ![image](https://github.com/khiladi1314/sahil/assets/152869573/5bc6782a-1844-4d71-b6d8-9c0031815c37)


## GitLab Flow

### Enhancement flow

The flow starts with the master branch, the pre-production environment branch, and the production environment branch. All these branches should be protected, for developers do not commit directly to them.

![image](https://github.com/khiladi1314/sahil/assets/152869573/5a993ca1-f17f-4e96-a6cf-80a2a67d5ea6)

In the same way as in GitHub flow, to start a new development demand, you must create a specific branch for this demand and periodically perform pushes for branch of the same name to the remote repository.

![image](https://github.com/khiladi1314/sahil/assets/152869573/0954857d-782b-4b8f-9deb-b04bcc4e836c)

Upon finalizing the demand, a Merge Request for the master is requested. A code review can be opened in GitLab and a discussion about the change can be started

![image](https://github.com/khiladi1314/sahil/assets/152869573/b847f7f8-c661-408c-a39a-2895cc93e175)

When approved, the change must be integrated into the master branch.

![image](https://github.com/khiladi1314/sahil/assets/152869573/4efa6918-1d76-441c-aa00-6c43394016e9)

A merge must then be made between the master branch and the pre-production environment branch. A pipeline should be executed to build the project and run the automated tests.

![image](https://github.com/khiladi1314/sahil/assets/152869573/a1f4fb2c-39b0-46a7-ae5b-29bb1e8606b5)

When passing in the automated tests, a merge must be done for the production branch. A pipeline should be executed again, to run the automated tests one more time and deploy to production.

A tag must be created to mark a stable version of the system and the feature branch must be removed to make the repository more organized.

![image](https://github.com/khiladi1314/sahil/assets/152869573/f3f71f9d-0107-4ab6-94ce-e40282ff249f)

## Advantages

- This flow guarantees a clean state in the branches at any point in the project life cycle.

- It defines how to do Continuous Integration and Continuous Delivery.

- It is very flexible according to the team's decisions.

- It is less complex than GitFlow Workflow.

## Disadvantages

- It is more complex than GitHub Workflow.

- Git's history becomes unreadable due to the various Merge Requests between branches.

## Conclusion

In conclusion, GitLab Flow provides a straightforward and efficient workflow for managing code changes, promoting collaboration, automation, and continuous delivery. By adopting GitLab Flow, teams can streamline their development processes, improve code quality, and accelerate software delivery. Embracing GitLab Flow empowers teams to work more effectively and deliver better results.


## Contact Information
|Name	|Email address 📧|
| --------------- | -------------- |
|sahil gupta       |	[sahil.gupta.snaatak@mygurukulam.co](https://www.gmail.com/)|

## Reference

|links|
| -------------- |
|https://www.linkedin.com/pulse/gitlab-flow-jadson-santos/ |
|https://about.gitlab.com/topics/version-control/what-is-gitlab-flow/|


