# INSTALLATION OF COURSE SOFTWARE

## OVERVIEW

In this course, we will seek to use a common analysis stack to facilitate deployment of the
necessary tools and increase the probability that technical questions that do arise have wide
application across students.  With this in mind, we are using the following tools:

1. [VirtualBox](https://www.virtualbox.org) is a virtualization product that will allow us all to
use the same operating system, no matter what operating system (e.g. Windows, macOS, Linux, etc.)
you use.  (Well, if you wrote your own operating system, you may be out of luck.)

2. [Ubuntu](https://www.ubuntu.com) is an open-source operating system, specifically of the Linux
variety. The advantages of Ubuntu (and
[Linux distributions](https://en.wikipedia.org/wiki/Linux_distribution) in general) are many.  For
our purposes, however, it is helpful that they are Unix-based, which is the development environment
used for many of the tools we will employ. The upshot is that installations can go more smoothly in
many cases. (Note that macOS is similar under the hood, and can often leverage similar benefits.)
Secondly, and this is important, Linux distributions *tend to be free*. Ubuntu, specifically, is a
user-friendly environment that retains similar functionality to Windows and Mac environments, while
also providing access to the robust suite of Linux utilities.

These tools will be new to most of you, but they help us [construct a reproducible analytic
environment](http://ropensci.github.io/reproducibility-guide/sections/introduction/).
One of the key objectives of this course is to introduce you to tools and workflow that allow you to
both recreate analysis and transparently share what you have done with others.  In so doing, we
reduce ambiguity around the choices we have made and, thereby, either bolster our conclusions or
efficiently identify opportunities for improvement.

## ACQUISITION OF INSTALLATION MEDIA

Installation of VirtualBox in Windows and macOS environments can generally be handled by
installation wizards.  To acquire the appropriate files, students can click on the site
below and find the installers in the "Downloads" section for each application site. If installation
is occurring in a Linux environment, installation instructions will differ based upon the flavor of
Linux used.

With respect to Ubuntu, you don't need to install it just yet (that will occur on the Virtual
Machine itself). You do, however, need a copy of the [ISO
image](https://en.wikipedia.org/wiki/ISO_image) that holds the operating system. You
can download it (v17.10) from the [Ubuntu Downloads page](https://www.ubuntu.com/download/desktop).
Save it somewhere that is easily accessible.

[![VirtualBox](figs/virtualbox.png)](https://www.virtualbox.org)

## INSTALLATION OF VIRTUALBOX

The videos below provide representative walkthroughs of installation on both Windows and Mac
machines.  

### Windows

[![Windows
Install](https://img.youtube.com/vi/ncA85gRAJxk/0.jpg)](https://www.youtube.com/watch?v=ncA85gRAJxk)

### macOS

[![Mac VirtualBox Install](https://img.youtube.com/vi/lEvM-No4eQo/0.jpg)](https://www.youtube.com/watch?v=lEvM-No4eQo)

## VIRTUAL MACHINE SET UP

Once you have VirtualBox installed and the Ubuntu ISO saved to disk, launch VirtualBox and create a
new VM by clicking on the "NEW" button. Name it whatever you like, but the type should be "Linux"
and the version should be "Ubuntu (64-bit)". You can walk through the install with the defaults for
the most part, but keep in mind that the amount of memory you allocate will affect the performance
of the VM.  

When you finish the installer, do not panic if you try to boot the machine and it fails. You will
need to navigate to "Devices > Optical Drives > Choose Disk Image...", and then select the Ubuntu
ISO file you saved earlier. This will allow you to install Ubuntu on the VM.

Once you have installed Ubuntu (and after a restart), open your greatest and best friend, the [bash
shell](https://en.wikipedia.org/wiki/Bash_(Unix_shell)). The application that houses it is called
"Terminal".

[![Bash](https://www.techy360.com/wp-content/uploads/2017/11/bashmini-1.png)](https://www.gnu.org/software/bash/)

After all that work to get a GUI, we are back at the command line. Execute all of the commands in
[provision.sh](https://github.com/choct155/telling_stories_with_data/blob/master/provision.sh) with
the following commands (making your way through the associated installers):

	`sudo wget https://raw.githubusercontent.com/choct155/telling_stories_with_data/master/provision.sh`
	`sudo chmod +x provision.sh`
	`sudo ./provision.sh`

[`sudo`](https://en.wikipedia.org/wiki/Sudo) allows you to run as the [root
user](https://en.wikipedia.org/wiki/Superuser), which is required if you want to be able to write
anything to disk or install new programs. This will take you up through the installation of Miniconda.

At the end of the Miniconda install, you will have the option to set Miniconda binary files in your
[`PATH`](https://en.wikipedia.org/wiki/PATH_(variable)), which you should do. You will also need to
manually set your
[`secure_path`](https://superuser.com/questions/927512/how-to-set-path-for-sudo-commands) to include the same folder (e.g. `/home/[USER]/miniconda3/bin/`).  You can do this by editing the "sudoers" file. To edit it, execute `sudo visudo` in the shell. This will open a text file which, among other things, defines the `secure_path`. Prepend the existing `secure_path` with the Miniconda binary file folder (e.g. `/home/[USER]/miniconda3/bin/:[other stuff on the right side of the secure_path assignment statement]`). Save and close that file.

Once you have updated that file, you can execute all the commands in
[conda_provision.sh](https://github.com/choct155/telling_stories_with_data/blob/master/conda_provision.sh),
with the following commands:

	`sudo wget https://raw.githubusercontent.com/choct155/telling_stories_with_data/master/conda_provision.sh`
	`sudo chmod +x conda_provision.sh`
	`sudo ./conda_provision.sh`

At this point, you should be in good shape with the tools we need (though we may update later). To start Jupyter Lab, just submit `sudo jupyter lab --allow-root` at the command line.

## ADDITIONAL RESOURCES

*Note that, in general, there are numerous videos on [YouTube](https://www.youtube.com) that provide
great information about all of the tools we will be using, from applications to operating systems.
Students are strongly encouraged to use it as an informational source.*

### The Unix Shell

One of the biggest advantages of operating in a unix-based or adjacent environment is the
[shell](https://en.wikipedia.org/wiki/Unix_shell).
While it is true that Windows offers command line access, unix-based systems have generally featured
the shell as the cornerstone of interaction with the computer. This method of interacton can be far
more flexible and efficient than interaction via the [Graphical User
Interface](https://en.wikipedia.org/wiki/Graphical_user_interface) (GUI) after learning just a few
of the basic functions available. That said, I won't sugar coat it, it takes practice.  Fortunately,
[Software Carpentry](https://software-carpentry.org) has, among a host of great resources, a solid
[introduction](https://swcarpentry.github.io/shell-novice/) to the [Bourne Again
Shell](https://en.wikipedia.org/wiki/Bash_(Unix_shell)) (bash). Finally, the resource everyone seeking to learn bash should know is the [bash academy](http://www.bash.academy/).

bash is fairly ubiquitous in the
Unix space, and the syntax it employs also works in large part in macOS. Learning how to use it will
probably make your life easier. For folks that prefer a video walkthrough of features, here is a
representative video that can be found on YouTube:

[![Bash Intro](https://img.youtube.com/vi/oxuRxtrO2Ag/0.jpg)](https://www.youtube.com/watch?v=xuRxtrO2Agi)

### Python

Pretty much anynoe who is learning Python should be aware of one of the finest resources we have
come across: [Interactive
Python](http://interactivepython.org/runestone/default/user/login?_next=/runestone/default/index).
They have a variety of online, interactive textbooks, including a fine introduction to programming
and Python called [How To Think Like a Computer
Scientist](http://interactivepython.org/runestone/static/thinkcspy/index.html). (Look at all the [cool things](https://github.com/jupyter/jupyter/wiki/A-gallery-of-interesting-Jupyter-Notebooks) people are doing with Python. For some visual inspiration, check out the [Bokeh gallery](https://bokeh.pydata.org/en/latest/docs/gallery.html).)
