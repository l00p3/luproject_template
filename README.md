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
Now that you have your repo on your git server, **Clone** it on your local machine, then:
1. Open the file *Makefile* and change the line:

    ```Makefile
    project-name = my_project_template
    ```
    to:

    ```Makefile
      project-name = your_project_name
    ```
    where *your_project_name* is the **Name** that you chosed for your project

2. Open the file *cpp/my_project_template/CMakeLists.txt* and change the line

    ```cmake
    set(MYPROJECT_NAME my_project)
    ```
    to:
    ```cmake
    set(MYPROJECT_NAME your_project_name)
    ```
    where, again, *your_project_name* is the **Name** that you chosed for your project


3. Do the same operation to the file *python/my_project_template/CMakeLists.txt* (this time that line will be inside a if statement)

4. Open the file *python/pyproject.toml* and change the line:

    ```toml
        name = "my_project_template"
    ```
    to:

    ```toml
      name = "your_project_name"
    ```

    And the line:
    ```toml
      wheel.install-dir = "my_project_template/pybind/"
    ```
    to:

    ```toml
      wheel.install-dir = "your_project_name/pybind/"
    ```


5. Change all the occurrences of *my_project_template* to *your_project_name* in the files: *python/my_project_template/pybind/my_project_template_pybind.cpp* and *python/my_project_template/my_package.py*

6. Run the command

    ```sh
    make project
    ```

Your repo is ready to be used!

### Last Steps Before to Start

- Remember to update the version in *CMakelists.txt* files and to *pyproject.toml*
- Add some description to the *pyproject.toml* file (especially, update **authors info** and **description**)
- Rewrite the *README* files (also me) and update the *LICENSE* (please cite mine if you use this template)

TODO

Last but not least, go to [kiss-icp](https://github.com/PRBonn/kiss-icp) and say thanks to them (at least star it!). This project structure is simple yet effective thanks to them!

## How to Use This Project Structure

TODO

## TODO
- add a way to rename the project semi-automatically
- Fix the version of Eigen
