# Authentication Setup

| Author | Created on | Version | Last updated by | Last edited on |
| ------ | ---------- | ------- | --------------- | -------------- |
| Sahil Gupta | 09-04-24   | version 1 | Sahil Gupta        | 09-04-24       |

## Table of Contents

| Table of contents|
| -------------- |
| 1. [Introduction](#Introduction) |
| 2. [Pre-requisites](#Pre-requisites)|
| 3. [Setup guide](#Setup-guide)|
| 4. [Advantages](#advantages)|
| 5. [Disadvantages](#disadvantages)|
| 6. [Contact Information](#Contact-Information)|
| 7. [References](#References)|

## Introduction

Welcome to the concise guide on setting up authentication in Version Control Systems (VCS). In today's digital age, securing your version control is essential for safeguarding your code and fostering collaborative development. This documentation provides streamlined instructions and best practices for configuring authentication mechanisms across various VCS platforms, ensuring your projects remain protected while enabling seamless teamwork. Let's dive in and strengthen the security of your version control infrastructure.

## Pre-requisites

- Active Gmail Account

- Any TOTP authenticator app installed on your device (e.g. Google Authenticator )

- Device to scan QR for passkey

## Setup guide

### Step-I

- In the upper-right corner of any page, click your profile photo, then click Settings.

  ![Screenshot from 2024-04-09 12-53-22](https://github.com/khiladi1314/sahil/assets/152869573/501840d6-3682-4d37-9d0c-ce936d537772)


- In the "Access" section of the sidebar, click Password and authentication.  

 ![image](https://github.com/khiladi1314/sahil/assets/152869573/e333e00c-8b19-493c-a495-e78efcd83731)

- In the "Two-factor authentication" section of the page, click Enable two-factor authentication.

![Screenshot from 2024-04-09 12-36-19](https://github.com/khiladi1314/sahil/assets/152869573/c8538a47-6e95-4638-9368-18a98a85cf08)

- After you click Enable two-factor authentication on you'll get to see QR to scan using authenticator and follow the steps to setup.

  ![Screenshot from 2024-04-09 12-37-41](https://github.com/khiladi1314/sahil/assets/152869573/07a0b7d0-7d08-444e-a7fb-ef68a2658c36)

- Now Scan the QR code with your mobile device's app. After scanning, the app displays a six-digit code that you can enter on GitHub.

- The TOTP application saves your account on GitHub.com and generates a new authentication code every few seconds. On GitHub, type the code into the field under "Verify the code from the app".

  ![image](https://github.com/khiladi1314/sahil/assets/152869573/de2538a3-2e07-4e0c-9bfb-46d0cbbfd7a3)

- Under "Save your recovery codes", click Download to download your recovery codes to your device. Save them to a secure location because your recovery codes can help you get back into your account if you lose access

  ![Screenshot from 2024-04-09 12-44-43](https://github.com/khiladi1314/sahil/assets/152869573/1622ee94-9194-4392-a704-0b2b22a572f1)

- After saving your two-factor recovery codes, click I have saved my recovery codes to enable two-factor authentication for your account.

  ![Screenshot from 2024-04-09 12-45-45](https://github.com/khiladi1314/sahil/assets/152869573/a8927710-9398-46e8-bd54-288548e08475)

- Now get sign-out and lets login again.

  ![Screenshot from 2024-04-09 12-58-39](https://github.com/khiladi1314/sahil/assets/152869573/dec3ba3e-6828-4b0b-b378-71f579dce5e1)

- After this you will going too see an autheticate code page where you will have to enter that code which will come on your authenticator app.

  ![Screenshot from 2024-04-09 13-00-36](https://github.com/khiladi1314/sahil/assets/152869573/df3292fe-cc31-4f2e-a63f-cd5a9cc54076)

- Then you will going to see that you are login successfully

![Screenshot from 2024-04-09 13-03-49](https://github.com/khiladi1314/sahil/assets/152869573/1da0e693-423e-4de1-84d0-2efafe7263c2)

## Advantages

| Name | Description |
| :-------: | ------- |
|**Security Enhancement**| Authentication setups prevent unauthorized access to your code repositories, reducing the risk of data breaches, intellectual property theft, and malicious activities.|
|**User Accountability****| By requiring authentication for accessing VCS, you establish accountability among team members. Each action taken within the system is traceable to specific users, fostering a culture of responsibility and transparency.|
|**Access Control**| Authentication allows you to enforce granular access controls, specifying who can view, modify, or manage repositories and their contents. This ensures that sensitive information remains accessible only to authorized personnel.
|**Regulatory Compliance**| Authentication mechanisms help ensure compliance with industry regulations and standards by maintaining an auditable record of code changes and user interactions. This is particularly crucial in regulated industries such as finance, healthcare, and government.|
|**Streamlined Collaboration**| Secure authentication facilitates seamless collaboration among team members, regardless of their geographical location or organizational role. Team members can confidently share code, review changes, and collaborate on projects in real-time.|
|**Integration Flexibility**| Many authentication methods integrate seamlessly with existing identity providers (IdPs), enabling centralized user management and simplifying access control administration. This streamlines user provisioning and deprovisioning processes, reducing administrative overhead|


## Disadvantages

| Name | Description |
| :-------: | -------- |
|**Complexity and Overhead**| Depending on the authentication method chosen, implementation and maintenance can introduce complexity and administrative overhead.|
|**User Resistance**| Introducing authentication requirements, especially if they involve additional steps like multi-factor authentication (MFA) or complex password policies, can lead to user resistance or frustration. |
|**Single Point of Failure**| If authentication mechanisms are not properly configured or maintained, they can become single points of failure. Any compromise or downtime in the authentication system could lead to widespread access issues and disrupt development workflows.|
|**User Experience Impact**| Stringent authentication measures, such as frequent password changes or complex authentication processes, may negatively impact user experience.
|**Integration Challenges**| Integrating authentication systems with existing |infrastructure or third-party services can present challenges, particularly in heterogeneous environments with diverse technologies and protocols.|

## Contact Information
|Name	|Email address 📧|
| --------------- | -------------- |
|**sahil gupta** |	[sahil.gupta.snaatak@mygurukulam.co](https://www.gmail.com/)|

## Reference
|Description	|link|
| --------------- | :--------------: |
|**More about authentication**| https://github.com/OT-MyGurukulam/Snaatak_p8_Documentation/blob/main/VCS/VCS%20Authentication/VCS_Authentication%20POC.md|
|**video to learn how to setup authentication**|https://youtu.be/CHIys2BQT38?si=0AU-IDiwrxNPXO33|









