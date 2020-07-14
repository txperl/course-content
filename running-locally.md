# How to get started on python tutorials without using google colab or other online service.

We recognize that some of our students will not be able to access google colab or have slow internet.  So this set of instructions is to help you get an alternative environment up and running.  You're going to be using a tool that's very similar to google colab called jupyter notebooks. (In fact google colab is just google's evolution of a jupyter notebook.) We have provided written instructions for macOS / Windows / Linux operating systems below.

### VIDEO INSTRUCTIONS
- macOS -- [Precourse Getting started with Python: Jupyter Notebooks Mac OS](https://www.youtube.com/watch?v=ex3W0QVQioU&feature=youtu.be)
- Windows -- UNDER CONSTRUCTION
- Linux -- UNDER CONSTRUCTION

## Step 1: Install Miniconda (or Anaconda) package manager (if you don't have it)

You'll need to [download and install Miniconda](https://docs.conda.io/en/latest/miniconda.html) for your operating system [Mac / PC / Linux].  

Miniconda is a small (<100MB) application that helps set up programming environments. There is an alternative setup called [Anaconda](https://docs.anaconda.com/anaconda/install/) which includes about 3GB of packages. If you have a slow internet connection (or not too much disk space) Miniconda is recommended.

The rest of the steps will be somewhat specific to your operating system, so navigate to the operating system you are using.

## Step 1a: Install git (if you don't have it)
### For Windows Users

Install [git-bash](https://git-scm.com/downloads). Once it is installed you can open git-bash from the start menu and follow along with the rest of the instructions.

### For Mac Users

You can install [git through brew](https://gist.github.com/derhuerst/1b15ff4652a867391f03#file-mac-md), using the XCode [command line tools](https://phoenixnap.com/kb/install-git-on-mac#htoc-install-git-using-xcode) or any other way you like.

### For Ubuntu/debian Users

`apt-get install git`

### For Fedora/CentOS Users

`yum install git`



### Step 2: Clone/download this repository

You will need a local copy of this repository to run the notebooks. If you have `git` installed you can run:

```bash
cd ~/Documents/;
git clone https://github.com/erlichlab/course-content
```

If you don't have `git` you can just download this [zip file](https://github.com/erlichlab/course-content/archive/master.zip). 

### Step 3: Create the python programming environment for these tutorials

First, change into the `course-content` folder. Then in your terminal (note: if you had a terminal window open before you installed `conda` in Step 2, you need to open a **new** window to give `conda` a chance to do some setup).

    conda env create --file=environment.yml

This will download all the packages you need to run the course content and create an _environment_ called `nma`. It may take a few minutes to complete the installation.

Now activate the environment!

    conda activate nma

When you are done with using the course content you can just close the window or you can deactivate

    conda deactivate

### Step 4 - Opening a jupyter notebook
Run the following command:

	jupyter notebook

This should open up your default browser with a web page that looks like this:

![Jupyter root](media/jupyter-main.png)

A single click on tutorials, will take you to a list of folders for each tutorial:

<img src=media/jupyter-tutorials.png height=400>

Then click on the folder you want to work on e.g. `W1D1_ModelTypes` and click on on the Jupyter notebook you want to work on (e.g. `W1D1_Tutorial1`)

