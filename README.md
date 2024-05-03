# My Project Template

A template for my new cpp/python projects.
The structure is inspired by [kiss-icp](https://github.com/PRBonn/kiss-icp).

## How to Use Me
I am assuming that you have basic knwowledge of git, CMake, Python and C++, otherwise please don't use this template.

### Create a New Repo from This Templae
First, you need to create your repo using me as a template.
On the main page of this repository:
- Above the file list, click **Use this template**
- Select **Create a new repository**
- Select the **Owner** of the new repository, a cool **Name** for it and the **Visibility**
- Click **Create repository from template**

### Initialize Project
Now that you have youre repo on your git server, **Clone** it on your local machine, then:
- Open the file *Makefile* and change the line:

    ```Makefile
    project-name = my_project_template
    ```
  to:

  ```Makefile
    project-name = your_project_name
    ```
  where *your_project_name* is the **Name** that you chosed for your project
- Open the file *cpp/my_project/CMakeLists.txt* and change the line

    ```cmake
    set(PROJECT_NAME my_project)
    ```
  to:
    ```cmake
    set(PROJECT_NAME your_project_name)
    ```
  where, again, *your_project_name* is the **Name** that you chosed for your project


- Do the same operation to the file *python/my_project/CMakeLists.txt* (maybe this is better if done with scikit build variable)

### Last Steps Before to Start

## TODO
- add a way to rename the project semi-automatically
- Fix the version of Eigen
