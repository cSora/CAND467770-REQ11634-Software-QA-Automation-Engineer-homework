# CAND467770-REQ11634-Software-QA-Automation-Engineer-homework
## David Somfai API testfw

**Hi there fellow user of this testframework**

### Basics

- This project is a JAVA project wich uses POM as its building tool, if you wish to extend it please don't forget to include the changes in every impacted branch and notice fellow testers also.
- The main goal of the framework is to test different APIs and ensure their workings are as expected.
- The framework uses KARATE as its main motor. You can read about KARATE here: [KARATE](https://github.com/karatelabs/karate?tab=readme-ov-file#readme)

### How to use

1. As a starter make sure you have all the maven dependecies installed by running this command:
```mvn clean install```
2. If you want to run the tests simply use this command: 
```mvn clean verify```
3. To see the reports after running check out the __target/karate-reports__ folder and open the ***karate-summary.html*** 

### Future plans

The framework is heavily WIP, so there are a lot of handy functionalities wich are not included YET!

1. run based on test tag
2. custom test cases
3. dynamic test data injecting and handling

And so on, the possibilites are endless, it just needs our imagination and work to make it an even more awesome testing tool! 
