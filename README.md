<!--Category:Powershell--> 
 <p align="right">
    <a href="https://www.powershellgallery.com/packages/ProductivityTools.PSImportModulesFromDirectory/"><img src="Images/Header/Powershell_border_40px.png" /></a>
    <a href="http://www.productivitytools.tech/sql-commands/"><img src="Images/Header/ProductivityTools_green_40px_2.png" /><a> 
    <a href="https://github.com/pwujczyk/ProductivityTools.PSImportModulesFromDirectory"><img src="Images/Header/Github_border_40px.png" /></a>
</p>
<p align="center">
    <a href="http://productivitytools.tech/">
        <img src="Images/Header/LogoTitle_green_500px.png" />
    </a>
</p>


# Import-ModulesFromDirectory

Imports all module from given directory.
<!--more-->


Not all modules written by me are pushed directly to powershellgallery.com at first usually I am storing them on locally and use for some time, some of them won't be published as they are very specific to my needs and won't be valuable for others.

To import them in convienient way I am using Import-ModulesFromDirectory module. 

It searches through the directory to find psm1 files and performs **Import-Module** on them.
<!--og-image-->
![Import modules from Directory](Images/ImportModulesFromDirectory.png)

```powershell
Import-ModulesFromDirectory -Recurse -Verbose

Import-ModulesFromDirectory -Recurse -Verbose -Path D:\Powershell\Common\Modules\
```

Cmdlet has two switches: **Recuse** and **Path**. If **Path** is not provided it uses current directory.