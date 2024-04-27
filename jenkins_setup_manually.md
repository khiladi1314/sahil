![image](https://github.com/khiladi1314/sahil/assets/152869573/5447b794-a2c1-40f1-8b7c-98c1364c371e)


# Postgresql Setup Manually (Security Group and Instance)

| Author | Created on | Version | Last updated by | Last edited on |
| :------: | :----------: | :-------: | :---------------: | :--------------: |
| Sahil gupta  | 27-04-2024   | version 1 | Sahil gupta   | 27-04-24       |

| S.no. | Table of Contents |
|:-------:| --------------- |
| 1.| [Introduction](#introduction)|
| 2.| [Purpose](#purpose)|
| 3.| [Port](port)|
| 4.| [Infra Setup](#infra-setup)|
| 5.| [Infra Diagram](#infra-diagram)|
| 6.| [Advantages](#advantages)|
| 7.| [Disadvantages](#disadvantages)|
| 8.| [Conclusion](#conclusion)|
| 9.| [Contact Information](#contact-information)|
| 10.|[Reference](#reference)|

## Introduction

The PostgreSQL documentation serves as a comprehensive resource for setting up and managing PostgreSQL databases. It covers installation instructions for various platforms, configuration options, administration tasks, SQL syntax, advanced features, and reference materials. Whether you're a novice or an experienced user, the documentation provides detailed guidance to ensure a successful PostgreSQL setup tailored to your needs.

## Purpose

The purpose of setting up PostgreSQL, an open-source relational database management system (RDBMS), is to establish a robust and reliable database environment for storing, organizing, and managing data. PostgreSQL offers various features that cater to different use cases, including:

|Name|Description|
|:-------:|--------|
|**Data Storage**| PostgreSQL allows you to store structured data in tables, enabling efficient retrieval and manipulation of information.|
|**Data Integrity**| It ensures data integrity through constraints, such as primary keys, foreign keys, and unique constraints, maintaining data consistency and reliability.|
|**Data Security**| PostgreSQL provides robust security features, including authentication mechanisms, access control, encryption, and SSL support, to safeguard sensitive data from unauthorized access and breaches.
|**Scalability**| It supports scalability through features like table partitioning, connection pooling, and support for advanced replication mechanisms, enabling applications to handle increasing data loads and user traffic effectively.|

## Port

|port.No.|Description|
|:-----------:|----------|
|**5432**|By default, PostgreSQL listens on port 5432 for incoming connections. This is the port that client applications use to communicate with the PostgreSQL server.|

## Infra-Setup

- Update Package Index

        sudo apt update


- Install PostgreSQL

        sudo apt install postgresql

   ![Screenshot from 2024-03-22 11-55-55](https://github.com/khiladi1314/sahil/assets/152869573/b5521ac8-57bd-4fe6-9dea-e4d5c1b560e5)


- Verify Installation

        systemctl status postgresql
  
![Screenshot from 2024-03-22 11-57-34](https://github.com/khiladi1314/sahil/assets/152869573/801dd652-c35b-4dac-acf4-9da0ddca7c1b)


- Access PostgreSQL

        sudo -u postgres psql

![Screenshot from 2024-03-23 18-41-10](https://github.com/khiladi1314/sahil/assets/152869573/4a884813-91f0-47c9-a2d4-ab475a878f93)

- user creation

![image](https://github.com/khiladi1314/sahil/assets/152869573/6c834559-5b17-469f-a942-cd4616cda9ce)


- configuration file

![Screenshot from 2024-03-26 16-05-03](https://github.com/khiladi1314/sahil/assets/152869573/02027272-f0a2-4252-a103-b8e7fca657cd)


## Infra-Diagram

![Screenshot from 2024-04-27 12-19-03](https://github.com/khiladi1314/sahil/assets/152869573/0a7861ce-1319-4aa7-bad6-30bd382ade8e)

This AWS architecture diagram depicts a Virtual Private Cloud (VPC) setup with a public subnet, a private subnet, two route tables, an internet gateway, a NAT gateway, a jump instance, and a private instance. The public subnet includes the internet gateway for external communication, while the private subnet hosts the private instance for PostgreSQL installation. The NAT gateway enables the private instance to access the internet securely. The jump instance serves as a bastion host for secure access to the private instance. This setup ensures a secure environment for deploying PostgreSQL, with the jump instance providing a gateway for managing and accessing private resources.


## Advantages

|Name|Description|
|:-------:|--------|
|**Scalability**| AWS offers effortless scaling options, allowing you to seamlessly adjust resources up or down based on your application's needs. Whether you're experiencing spikes in traffic or planning for future growth, AWS provides the infrastructure to support your PostgreSQL databases without downtime or performance degradation.|
|**High Availability**| With AWS, you can achieve high availability for your PostgreSQL databases through Multi-AZ deployments. By replicating your database across multiple Availability Zones, AWS ensures that your applications remain resilient to potential failures. |
|**Managed Services**| AWS Managed Services takes care of routine database management tasks such as backups, patching, and software updates, allowing you to focus on building and optimizing your applications. |
|**Security**| Security is paramount on AWS, and PostgreSQL deployments benefit from a wide range of security features. AWS provides robust encryption options for data at rest and in transit, as well as fine-grained access controls to restrict unauthorized access to your databases.|
|**Backup and Recovery**| AWS offers comprehensive backup and recovery options for PostgreSQL databases, including automated backups and point-in-time recovery. With automated backups, AWS regularly captures snapshots of your database instance, allowing you to restore to any point within your retention period. |
|**Monitoring**| AWS provides a suite of monitoring tools to help you track the performance and health of your PostgreSQL databases. With Amazon CloudWatch, you can monitor key metrics such as CPU utilization, storage usage, and database connections in real-time. |
|**Cost Efficiency**| AWS offers flexible pricing models and cost management tools to help you optimize spending on PostgreSQL deployments. With pay-as-you-go pricing, you only pay for the resources you use, allowing you to align costs with actual usage patterns. Additionally, AWS provides options such as Reserved Instances and Savings Plans to help you reduce costs further by committing to usage over a specified term. |

## Disadvantages

|Name|Description|
|:-------:|--------|
|**Costs**| While AWS provides flexibility in scaling resources and paying only for what you use, costs can escalate if resources are not optimized properly. Additionally, data transfer costs and charges for certain services may add up, especially in high-traffic scenarios.|
|**Vendor Lock-in**| By committing to AWS services, you may become dependent on their ecosystem, making it challenging to migrate away from AWS in the future. This can limit your flexibility and bargaining power in negotiations.|
|**Complexity**| AWS offers a vast array of services and features, which can lead to complexity in managing your infrastructure. Configuring and optimizing services may require specialized knowledge, and troubleshooting issues can be more challenging in a complex environment.|
|**Performance Variability**| While AWS provides high-performance infrastructure, performance can be variable, especially in shared environments. Factors such as noisy neighbors or resource contention may impact the performance of your PostgreSQL databases.|
|**Dependency on Internet Connectivity**| Hosting on AWS relies on internet connectivity, which may pose challenges in regions with unreliable or limited internet access. Organizations in remote or underdeveloped areas may face connectivity issues that impact the availability of their PostgreSQL databases.|

## Conclusion

In conclusion, hosting PostgreSQL on AWS offers numerous advantages, including scalability, high availability, managed services, security features, backup and recovery options, monitoring capabilities, and cost efficiency. However, there are also potential disadvantages to consider, such as costs, vendor lock-in, complexity, performance variability, data sovereignty concerns, limited control, dependency on internet connectivity, and the potential for outages.

## Contact Information
|Name	|Email address 📧|
| --------------- |--------------|
|**Sahil gupta**|sahil.gupta.snaatak@mygurukulam.co|

## Reference
|Links|Description|
|--------------|:-----------:|
|[CLICK HERE](https://www.jenkins.io/doc/tutorials/tutorial-for-installing-jenkins-on-AWS/)|**Jenkins setup on aws**|
