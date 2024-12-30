
# CAND467770-REQ11634-Software-QA-Automation-Engineer-Homework
## David Somfai API Test Framework

**Hi there, fellow user of this test framework!**

### Basics

- This project is a **Java** project that uses **POM** (Project Object Model) as its build tool. If you wish to extend it, please don't forget to include the changes in every impacted branch and notify fellow testers.
- The main goal of the framework is to test different APIs and ensure their functionality is as expected.
- The framework uses **Karate** as its main engine. You can read more about Karate here: [Karate](https://github.com/karatelabs/karate?tab=readme-ov-file#readme)

### How to Use

1. First, make sure you have all the Maven dependencies installed by running the following command:
   ```bash
   mvn clean install
   ```

2. To run the tests, use this command:
   ```bash
   mvn clean verify
   ```

3. After running the tests, you can find the reports in the **target/karate-reports** folder. Open the **karate-summary.html** file to view the results.

### Future Plans

The framework is still a **work in progress (WIP)**, so there are many useful features that are not included yet! Some of the planned enhancements include:

1. Running tests based on tags
2. Adding custom test cases
3. Dynamic test data injection and handling

And many more! The possibilities are endless — it just needs our imagination and effort to make it an even more powerful testing tool!
