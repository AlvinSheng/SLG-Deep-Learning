<h1>This is a page used in ST 558 about getting R and gitHub to work together.</h1>

<h2> Understanding Git/GitHub</h2>
<p> In order to document our process and findings as well as collaborate and share our work more effectively, we want to be using a version control system that easily allows multiple users to work on the same project. </p>
<img src="https://github.com/AlvinSheng/SLG-Deep-Learning/blob/master/VersionControl.gif" alt="Version Control Comic" style="float:right;" class="img-responsive atto_image_button_text-bottom" width="600" height="800">
<p> Git is a version control system designed just for this purpose. GitHub is a hosting service that allows use to do Git-based projects on the internet. While we've seen how to make our workflow for a project be reproducible, ideally we would save different
    versions of our analysis, write-up, etc. along the way to document that as well.&nbsp; Rather than having to create different names for the files, Git allows us to simply track the changes that we commit to the files.&nbsp; For understanding, installing,
    and using Git/GitHub with R we will be reading different parts from the book <a href="http://happygitwithr.com">happgitwithr</a>. This book is written by some folks at the University of British Columbia for students taking their course and workshops.&nbsp;
    Please read <a href="http://happygitwithr.com/big-picture.html">chapter 1 of that book</a> now and then come back to this page to get started installing and getting R to work with Git and Github!<span style="font-size: 1rem;">&nbsp;</span></p>

<h2>GitHub</h2>
<p>Everyone at NCSU has a free private GitHub account through <a href="http://github.ncsu.edu" target="_blank">github.ncsu.edu</a>.&nbsp; I've had issues connecting R Studio to the NCSU GitHub so I'd go ahead and create a free account at github.com to make
    sure RStudio can connect to it.&nbsp;&nbsp;</p>

<h2>Installing Git on your Computer</h2>
<p> This material is distilled from <a href="http://happygitwithr.com/install-git.html" target="_blank">chapter 7 of happygitwithr</a>.&nbsp; We need to install Git on our local machine.&nbsp; Depending on your operating system things will differ.&nbsp;</p>
<h5>Windows</h5>
<p></p>
<p>Install&nbsp;<a href="https://git-for-windows.github.io/" target="_blank">Git for Windows</a>, also known as&nbsp;<code>msysgit</code>&nbsp;or “Git Bash”, to get Git in addition to some other useful tools, such as the Bash shell. Yes, all those names
    are totally confusing, but you might encounter them elsewhere and I want you to be well-informed.</p>
<p>We like this because Git for Windows leaves the Git executable in a conventional location, which will help you and other programs, e.g.&nbsp;RStudio, find it and use it. This also supports a transition to more expert use, because the “Git Bash” shell
    will be useful as you venture outside of R/RStudio.</p>
<ul>
    <li><strong>NOTE:</strong>&nbsp;Select “Use Git from the command line and also from 3rd party software” during installation. Otherwise, I believe it’s OK to accept the defaults.</li>
    <li>Note that RStudio for Windows prefers for Git to be installed below&nbsp;<code>C:/Program Files</code>, for example the Git executable on my Windows system is found at&nbsp;<code>C:/Program Files/Git/bin/git.exe</code>. Unless you have specific reasons
        to otherwise, follow this convention.</li>
</ul>
<p></p>
<h5>Mac</h5>
<p></p>
<p>Install the Xcode command line tools (<strong>not all of Xcode</strong>), which includes Git. If your OS is older than 10.11 El Capitan, it is possible that you&nbsp;<strong>must</strong>&nbsp;install the Xcode command line tools in order for RStudio
    to find and use Git.&nbsp; (If you need more instructions that what is below, check out this <a href="http://osxdaily.com/2014/02/12/install-command-line-tools-mac-os-x/" target="_blank">web site for installation commands.)&nbsp;</a>&nbsp;</p>
<p>Go to the shell and enter one of these commands to elicit an offer to install developer command line tools:</p>
<pre><code>git --version
git config</code></pre>
<p>Accept the offer! Click on “Install”.</p>
<p>Here’s another way to request this installation, more directly:</p>
<pre><code>xcode-select --install</code></pre>
<p>We just happen to find this Git-based trigger apropos.</p>
<p>Note also that, after upgrading your Mac OS, you might need to re-do the above and/or re-agree to the Xcode license agreement. Without this it seemed to cause the RStudio Git pane to disappear on a system where it was previously working. Use commands
    like those above to tickle Xcode into prompting you for what it needs, then restart RStudio.</p>
<h5>Linux</h5>
<p></p>
<p>Install Git via your distro’s package manager.</p>
<p>Ubuntu or Debian Linux:</p>
<pre><code>sudo apt-get install git</code></pre>
<p>Fedora or RedHat Linux:</p>
<pre><code>sudo yum install git</code></pre>
<h4>Command Line Interpreter (CLI)</h4>
<p>At this point we are ready to learn about about using the "shell" or command line interpreter.&nbsp; Macs are built on Linux and so they come with the CLI naturally.&nbsp; For Windows this is not the case.&nbsp; However, if you are using Windows and have
    now installed Git you have access to a CLI called BASH.&nbsp; At this point you should read&nbsp;<a href="http://happygitwithr.com/shell.html" target="_blank">Appendix A of happygitwithr</a>.&nbsp; Pay special attention to section A.4 as these are
    common commands you might run in the CLI.&nbsp; Really, if you want to be get deep into the data science world you should get very comfortable using the CLI as it will improve your efficiency and allow you to do things you can't do just in RStudio.</p>
<p></p>
<p>Let's get just a little practice using the CLI.&nbsp; Open the CLI (type Git Bash into the search bar for Windows, go to&nbsp;/Applications/Utilities/ and launch the terminal window for Mac).&nbsp;&nbsp;</p>
<p></p>
<ol>
    <li>Type&nbsp;<code>ls</code> to see what folders are in the current directory</li>
    <li> Create a folder on your computer that you know the path to. Set your current directory to that path using <code> cd "path/to/directory" </code> Now run <code>ls</code> and you probably shouldn't see any subfolders</li>
    <li> Type <code>cd ..</code> to move up one directory. Use the <code>cd</code> command to move back into the directory.</li>
    <li> Create a new R file in the folder by typing <code>touch exampleFile.R</code></li>
    <li> Now run <code>ls</code> and you should see the file in the directory</li>
    <li> You can actually edit the file through your shell. There are many great programs (such as emacs) you could use but by default I think you should have vim and nano. Let's use nano to open the file. Type <code>nano exampleFile.R</code> and you should
        enter into an editing mode.</li>
    <li> Add the following command to the file (putting your path in),
        <code>
write.csv(file = "path/to/your/newdirectory/data.csv", rnorm(100))</code>&nbsp;On your keyboard press "Ctrl/Cmd O" to write out the changes, hit enter to submit the changes to the file. Then "Ctrl/Cmd X" to exit the editor.</li>
    <li> Now we can run the file from the CLI!&nbsp; We just need to call R (or in this case Rscript and tell it where the file is).&nbsp; Since we are in the directory of the file we can use a relative path.&nbsp; This code runs the file for me (your code
        may need to be slightly different).&nbsp;&nbsp;<br>
        <code>  "C:/Program Files/R/R-3.5.1/bin/Rscript" exampleFile.R</code></li>
    <li> You should now have a .csv file in the directory. You can remove files in the directory using <code>rm</code>. Be careful, you can erase a lot of things on accident! <code>rm exampleFile.R</code></li>
</ol>
<p></p>
<h4>Talking with Git/GitHub</h4>
<p>At this point we are ready to interact with Git through our computer.&nbsp; Read <a href="http://happygitwithr.com/hello-git.html" target="_blank">chapter 8 and 9 of happygitwithr</a> - you may wish to install SourceTree (use Atlassian account) at this
    time, but it is not required.&nbsp; Note: The editor I like to use is Notepad++.&nbsp; You may want to install that and configure it to <a href="http://swcarpentry.github.io/git-novice/02-setup/" target="_blank">work </a>(optional).</p>
<p><a href="http://happygitwithr.com/push-pull-github.html" target="_blank">Read through chapter 10</a> and try to modify a repository.&nbsp; We'll learn more about pushing, pulling, and committing in a bit so if you don't understand what is going on exactly,
    don't worry.&nbsp; Just try to run the commands they do there and see if you get the appropriate changes to the files.&nbsp;&nbsp;</p>
<p>You'll probably want to do automatic authentication (optional for now).&nbsp; <a href="http://happygitwithr.com/credential-caching.html" target="_blank">Chapter 11</a> gives an easy method for doing this but if you have the time I'd try to figure out
    the SSH method from <a href="http://happygitwithr.com/ssh-keys.html" target="_blank">chapter 12</a> as this method is often used in industry.</p>
<h4>Using Git/GitHub through RStudio</h4>
<p>Lastly, we want to make it easy to connect to our repositories through RStudio.&nbsp; If we get this done, we won't need to download files and reupload them.&nbsp; This can all be done using commands in RStudio! Read <a href="http://happygitwithr.com/rstudio-git-github.html"
        target="_blank">chapter 13</a> to get things working.&nbsp; If you are having an issue, <a href="http://happygitwithr.com/rstudio-see-git.html" target="_blank">chapters 14</a> and <a href="http://happygitwithr.com/troubleshooting.html" target="_blank">15 </a>give
    some common issues and how to resolve them.</p>
<p>Once you've worked through this, you are ready to go!</p>
<h4>Understanding Git/GitHub</h4>
<p>There are two resources below to help you understand Git and version control.&nbsp; You can view whichever you prefer (or both) - the video is a bit long but uses RStudio so that is nice :)&nbsp; <br></p>
<ul>
    <li>Webinar from RStudio to see the functionality with Git (corresponding <a href="https://www.rstudio.com/resources/webinars/rstudio-essentials-webinar-series-managing-part-2/" target="_blank">web site</a> is here):<br></li>
</ul>
<p></p>
<p><a href="https://www.rstudio.com/resources/webinars/rstudio-essentials-webinar-series-managing-part-2/?wvideo=dmy1yh5wzd"><img src="https://embedwistia-a.akamaihd.net/deliveries/2abc628b41f8f17636b31e42994f103843fb8beb.jpg?image_play_button_size=2x&amp;image_crop_resized=960x540&amp;image_play_button=1&amp;image_play_button_color=4287c7e0" style="width=597; height=354;"></a></p>
<ul>
    <li>A <a href="https://learngitbranching.js.org/" target="_blank">visual introduction to Git</a><br></li>
</ul>
<p></p>
<p></p>
