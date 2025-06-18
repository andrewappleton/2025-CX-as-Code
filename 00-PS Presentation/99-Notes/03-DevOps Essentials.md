### DevOps & CI/CD Session: Outline

##Assumption on times:  
Morning: 09:00-12:00 (10:30-11:00 break)
Lunch: 12:00-13:00
Afternoon: 13:00-17:00 (14:30-15:00 break)

Perhaps look at CX-AS-CODE-DG.pptx (p.26)


This session: Afternoon.
Breakdown:
2,5h
2h

Outline:
What is CI/CD
Benefits of DevOps
Scenario
DevOps options
  Requirements for a Terraform project pipeline
  Go into various platforms that customers use
  HCP
  AWS/Azure + GitHub
Example
  Resources to manage
  Intro to GitHub
  Intro to HCP
 


——

What is CI/CD?
	A way to make software development, integration, and deployment:
* Faster
* Safer
* Efficient
* Reliable


Let’s look at a traditional way of deploying an Org without using CI/CD
	Imagine you are working in a team without using any CI/CD methods
	This involves four phases:
* Design
    * Requirements are gathered and documented with the customer, business analysts, and Genesys technical resources
* Develop/Build
    * Developers build the resources defined in the requirements, an iterative process within a sandbox environment
* Test/Stage
    * Once development is completed, code is manually migrated from a sandbox environment to a testing/staging environment, which replicates the exact production environment; this is where QA engineers will perform a series of tests against the environment, documenting their results and indicating whether the system passes or fails the requirements.
* Deploy
    * Once all tests have successfully passed the QA testing processes, the resources are then manually migrated to the production environment, validated, and then released.
    * This would be done during a maintenance window or downtime to allow changes and integration to be made.
    * After changes are deployed, you still need to continue monitoring and testing manually.  
    * Assuming everything is working well, then you are done!  
        * If it’s not working… then you have to manually roll back and revert to the previous state of your environment, causing extended downtime and customer frustration.

￼

So many manual steps and opportunities for human error to cause utter chaos!

—

So, how can CI/CD help this?

CI/CD = Continuous Integration (CI), Continuous Delivery/Development (CD)
It is a process to automate software delivery by automating tasks like the build/test/deploy phases discussed previously.

Let’s break it down…

Continuous Integration is a process in the pipeline where the members are going to integrate/push their work into their source control repository systems and the code will be automatically checked/validated/formatted/

Continuous Delivery/Deploy is where the code is pulled from your source code repository, automated testing can be implemented here and, based on results, the code can be deployed to the target environment.
Continuous delivery is a process of making sure the software is ready and can be deployed anywhere/anytime you want.

These phases define your CI/CD pipeline.

￼

Let’s look again at the different stages the development team will actively be involved in:
* Build: 
    * The starting point of the CI/CD pipeline
    * Any changes committed and pushed to push your code to the pipeline for the ‘testing’ phase
* Test
    * Here the code will be validated/tested using scripting and validation techniques, starting with basic testing such as a `terraform plan` 
    * More advanced testing can be defined through custom scripts that can run on virtual ‘runner’ machines - these are typically Linux-based temporary VMs that run bash/zsh/perl scripts to perform custom testing - 
        * Other tools can also be incorporated into these custom test activities, such as GC (Genesys Cloud Platform API CLI), for validating dependencies, etc.
            * Of course, you’re not limited to using Linux-based VMs, though this is the usual industry standard.  All Genesys tools (Archy, GC, CX as Code Terraform Provider) can run on the three major platforms (Linux, macOS, and Windows)
    * If any of the automated tests fail, then the code will not be approved and the pipeline process will reject any request to promote code to the production environment, instead sending notification to the developers of a failure in unit tests.
        * At this point developers can review the unit test output, identify the areas of failure, resolve the issues and restart the process.
* Deploy
    * Finally, after all tests have been passed, the code can then be pushed to the production environment.


What are the benefits?
* Quicker time to market
    * Automate the deployment
    * Reduce manual errors
    * Dramatically increase the time required to deploy software
* Higher Quality
    * Automated testing can help identify issues early in the development process
* Reduced risk
    * You can push smaller changes
    * You can push more frequently
    * Less likely to cause problems or outages
* Collaboration
    * Developers working together on a documented process can lead to improvements in process standardisation and efficiency

Popular CI/CD tools in DevOps

* GitHub
* GitHub Actions
* Terraform
* GitLab
* Azure DevOps
* AWS CodePipeline
* Jenkins

Our customers could be using any of the above, many of the tools not mentioned, and even tools that have been built in-house.

One thing we must always present to the customer is that *THEY* are responsible for their DevOps platform - we simply cannot be expected to be experts in all DevOps platforms, we can only provide guidance in the specifics on how to use CX as Code.  We will work as a member of their team to be the expert in the resources provided by Genesys in the Cloud Org.

Demo:
Show the mechanics behind building a project manually and deploying it to an Org.
	Even though we are using our tools to build the resources, this is not CI/CD, this is just manually running commands with the available tools - an important distinction, make this clear!




	
https://medium.com/@aaloktrivedi/creating-a-ci-cd-pipeline-with-terraform-cloud-to-deploy-wordpress-application-infrastructure-part-8f1cb9f4f022
