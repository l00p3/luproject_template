# My Project Template

A template for my new cpp/python projects.
The structure is inspired by [kiss-icp](https://github.com/PRBonn/kiss-icp).

## How to Use Me
I am assuming that you have basic knwowledge of git, CMake, Python and C++, otherwise please don't use this template.

### Create a New Repo from This Template
First, you need to create your repo using me as a template.
On the main page of this repository:
1. Above the file list, click **Use this template**
2. Select **Create a new repository**
3. Select the **Owner** of the new repository, a cool **Name** for it and the **Visibility**
4. Click **Create repository from template**

### Initialize Project
Now that you have youre repo on your git server, **Clone** it on your local machine, then:
1. Open the file *Makefile* and change the line:

    ```Makefile
    project-name = my_project_template
    ```
  to:

  ```Makefile
    project-name = your_project_name
    ```
  where *your_project_name* is the **Name** that you chosed for your project
2. Open the file *cpp/my_project/CMakeLists.txt* and change the line

    ```cmake
    set(MYPROJECT_NAME my_project)
    ```
  to:
    ```cmake
    set(MYPROJECT_NAME your_project_name)
    ```
  where, again, *your_project_name* is the **Name** that you chosed for your project


3. Do the same operation to the file *python/my_project/CMakeLists.txt* (maybe this is better if done with scikit build variable)

4. Run the command

  ```sh
  make project
  ```

### Last Steps Before to Start

## TODO
- add a way to rename the project semi-automatically
- Fix the version of Eigen
