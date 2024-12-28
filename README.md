<a name="top"></a>

<!-- header -->
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Unlicense License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]
<br />



<div align="center">
  <a href="https://github.com/johannesbausch/dotfiles">
    <img src="images/logo.webp" alt="Logo" width="310" height="310">
  </a>

  <h1 align="center">Development Enviroment</h1>

  <p align="center">
    Using NeoVim, WezTerm and Fish.
    <br />
    <br />
    Please ⭐ this repository if you find it helpful!
    <br />
    <br />
  </p>
</div>
<br />


<details>
<summary>Agenda</summary>
  
  - [1. Project Information](#1-project-information)
    - [1.1. Building blocks](#11-building-blocks)
  - [2. Getting Started](#2-getting-started)
    - [2.1. Set up WSL](#21-set-up-wsl)
    - [2.2. Set up WezTerm](#22-set-up-wezterm)
    - [2.3. Set up Fish](#23-set-up-fish)
    - [2.4. Set up NeoVim](#24-set-up-neovim)
    - [2.5. Programs & Dependencies](#25-programs-&-dependencies)
  - [3. Configure your WSL & DNS](#3-configure-your-wsl--dns)
  - [4. WSL Basics](#4-wsl-basics)
  - [5. Quick NeoVim Crash Course](#5-quick-neovim-crash-course)
  - [6. Discord Custom Rich Presence](#6-discord-custom-rich-presence)
  - [7. Additional Information](#7-additional-information)
  - [8. Contact Me](#8-contact-me)
  - [9. License](#9-license)
  - [10. Credits](#10-credits)

</details>



# 1. Project Information

This documentation provides a step-by-step guide for setting up a custom development environment using NeoVim.
<br />
Fork this project to get started.

<div align="right">
  
  [Jump to Top](#top)

</div>
<br />


## 1.1. Building blocks

Here are the tools utilized in this development environment.

* **NeoVim:**
  <br />
  A text editor offering extensive plugin support and limitless customization options.
  <br />
  <br />
* **WezTerm:**
  <br />
  A customizable terminal designed to suit your preferences.
  <br />
  <br />
* **Fish:**
  <br />
  An enhanced alternative to traditional shells, offering extensive customization options.

<div align="right">
  
  [Jump to Top](#top)
  
</div>
<br />



# 2. Getting Started

In this section, you will learn how to set up and personalize the environment to make it your own.
<br />
There's a lot of information here, but don’t worry—everything is explained in detail, step by step.
<br />
Before getting started, let’s review the structure of this project.
<br />
<br />
This repository is organized into two main directories: `win` (Windows) and `wsl` (Windows Subsystem Linux).
<br />
The `win` directory contains configurations specific to WezTerm, as WezTerm is used within the Windows environment.
<br />
The `wsl` directory includes tools and settings for the Linux subsystem, such as Fish, NeoVim, and more, since these are part of the Linux subsystem.
<br />
<br />
Each System has its own `.config` file.
On Windows, you can place the repository's `wezterm` configuration file in the `C:/Users/your_name/.config` directory.
<br />
On Linux, you can replace your `/root/.config` with the `.config` directory from this repository.
<br />
<br />

**GitHub CLI**
<br />
The hosts.yml file located in `/root/.config/gh` is automatically updated whenever you log in to GitHub.
<br />
You don't need to modify this file manually.
<br />
<br />

**Git Config**
<br />
The `gitconfig` file must also be updated.
<br />
Replace `your_name` with your actual name and the placeholder email with your real email address.
<br />
This ensures that your commits are attributed to you with the correct name and email.

<div align="right">
  
  [Jump to Top](#top)
  
</div>
<br />


## 2.1. Set up WSL

To proceed, you first need to set up your Linux Subsystem.

* **Why do we do that?**
  <br />
  Setting up the Linux Subsystem enables you to run Linux tools and applications on Windows, creating a more flexible development environment.
  <br />
  Using NeoVim in Linux is beneficial because Linux offers better compatibility with development tools, native package managers, and scripting environments.
  <br />
  It also provides a more customizable and efficient workflow, especially when working with command-line utilities and managing dependencies.
  <br />
  <br />
* **How do we do that?**
  ```shell
  wsl --install -d Debian
  ```
<br />

Now, all you need to do is create a user for your Linux Subsystem.

<div align="right">
  
  [Jump to Top](#top)
  
</div>
<br />


## 2.2. Set up WezTerm

First, visit the link and download WezTerm from <a href="https://wezfurlong.org/wezterm/installation.html">here</a>.
<br />
You know the drill—just run the setup, and you're good to go.

Next, move the repository's `wezterm` folder from your forked repository into `C:/Users/your_name/.config`.

Congrats! You now have WezTerm.

<div align="right">
  
  [Jump to Top](#top)
  
</div>
<br />


## 2.3. Set up Fish

Now that WezTerm is installed, we need a powerful shell to navigate with.

1. **Install Fish:**
   ```shell
   apt install fish
   ```
   <br />
2. **Install Fisher:**
   <br />
   A Plugin Manager for your shell.
   ```shell
   curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
   ```
   <br />
3. **Install Tide:**
   <br />
   This allows you to Style And customize your shell.
   ```shell
   fisher install IlanCosman/tide@v6
   ```
   <br />
4. **Register the Fish shell in the system:**
   ```shell
   echo /usr/local/bin/fish | sudo tee -a /etc/shells
   ```
   <br />
5. **Change Fish To Default Shell:**
   ```shell
   chsh -s /usr/local/bin/fish
   ```
   <br />
6. **Set Up Tide:**
   <br />
   You can also configure the basic appearance using `tide configure`.
   <br />
   This will open a wizard with visual examples to guide you.
<br />

**Note:**
<br />
The `fish_variables` file is auto-generated. 
<br />
The `fish_plugins` and `config.fish` files are either manually created or, if you utilize this repository's configuration, transferred from the repository to your `/root/.config/fish` directory.
<br />

**Info:**
<br />
The Fisher plugin manages Fish shell plugins, making it easy to install, update, and configure them.
<br />
The Tide plugin provides a visually customizable prompt for the Fish shell, enhancing its appearance and functionality.

<div align="right">
  
  [Jump to Top](#top)
  
</div>
<br />


## 2.4. Set up NeoVim

Of course, we can't forget about the heart of the environment—NeoVim.
<br />
NeoVim is entirely configured in Lua, eliminating the need to install any additional packages beyond NeoVim itself.

1. **Install NeoVim:**
   ```shell
   apt install neovim
   ```
   <br />
2. **Run Lazy.nvim:**
   <br />
   To install all the defined plugins, you need to run the plugin manager.
   <br />
   Type `vi` to enter Neovim, then type `:Lazy` and press Enter.
<br />

To find more plugins, <a href="https://dotfyle.com/">visit</a>

<div align="right">
  
  [Jump to Top](#top)
  
</div>
<br />


## 2.5. Programs & Dependencies

Now, let's take a look at some useful programs.

1. **Update Your Packages:**
   ```shell
   apt update
   ```
   <br />
2. **Install PNPM:**
   <br />
   I use pnpm as a package manager because it is faster and more efficient than traditional package managers like npm.
   <br />
   It uses a unique approach of hard-linking dependencies, which saves disk space and speeds up installation times.
   ```shell
   curl -fsSL https://get.pnpm.io/install.sh | sh -
   ```
   <br />
3. **Install Node:**
   <br />
   I use Node for my own projects.
   <br />
   If you don’t need it, feel free to skip it.
   ```shell
   pnpm env use --global latest
   ```
   <br />
4. **Install LSD:**
   <br />
   LSD is an enhanced version of the ls command that provides additional features, such as colorful output, improved file type icons, and a more user-friendly display of directory contents.
   <br />
   It makes navigating the filesystem more visually appealing and informative.
   ```shell
   apt install lsd
   ```
   <br />
5. **Install GCC:**
   <br />
   GCC (GNU Compiler Collection) is a C compiler that translates C code into machine code, allowing programs to be executed on a computer.
   <br />
   It's essential for compiling C programs and is widely used in development because it supports multiple programming languages, is highly optimized, and works across various platforms.
   ```shell
   apt install gcc
   ```
   <br />
6. **Install Neofetch:**
   <br />
   Neofetch is a system information tool that displays detailed information about your system in a visually appealing way, including details like the OS, kernel, uptime, memory usage, and more.
   <br />
   It’s useful for quickly checking system stats and for displaying custom system info in a terminal, often used by developers and in system setups.
   ```shell
   apt install neofetch
   ```
   <br />
7. **Install A Font:**
    <br />
    Quick step outside the Linux Subsystem:
    <br />
    Visit <a href="https://www.nerdfonts.com/font-downloads">Nerd Fonts</a> and download a font that you feel comfortable with.
    <br />
    Make sure to unzip the font and save the font file under `C:\Windows\Fonts`.
    <br />
    Then, update the `typography.lua` WezTerm configuration to reflect the new font.
    <br />
    <br />
8. **Install Clipboard:**
    <br />
    A clipboard allows you to copy and paste content both into and out of the Linux Subsystem.
    ```shell
    apt install xclip
    ```
    <br />
9. **Install grep:**
    <br />
    This tool helps you find specific files and definitions.
    <br />
    Most Linux distributions come with `grep` pre-installed, but if you don't have it, you may want to install it.
    ```shell
    apt install grep
    ```
    <br />
10. **Install Make:**
    <br />
    This tool is helpful for automating the process of building and managing dependencies in software projects.
    <br />
    <br />
11. **Install Unzip:**
    <br />
    This tool is helpful for extracting files from `.zip` archives.
    <br />
    <br />
12. **Install Git:**
    ```
    apt install git
    ```
    <br />
13. **Install GitHub CLI:**
    ```shell
    apt install gh
    ```
    <br />
14. **Log In To GitHub:**
    ```shell
    gh auth login
    ```

<div align="right">
  
  [Jump to Top](#top)
  
</div>
<br />



# 3. Configure Your WSL & DNS

To properly work with your Linux Subsystem, you need to add a `wsl.conf` and a `resolv.conf`.
<br />
Follow the steps below to achieve this:

1. **Create a `wsl.conf`:**
   <br />
   Move the `wsl.conf` File from this repository into your `/etc/` folder.
   <br />
   <br />
2. **Override The `resolv.conf`:**
   <br />
   For example, you can use Google's public DNS.
   ```shell
   bash -c 'echo "nameserver 8.8.8.8" > /etc/resolv.conf'
   ```
   <br />
3. **Make the `resolv.conf` Unmodifiable:**
   ```shell
   chattr +i /etc/resolv.conf
   ```

This way, your Linux Subsystem will have a DNS that properly resolves your requests.

<div align="right">
  
  [Jump to Top](#top)
  
</div>
<br />



# 4. WSL Basics

This section covers essential concepts that are important to understand about WSL.

1. **Starting WSL:**
   ```shell
   wsl
   ```
   <br />
2. **Access Windows Drive From WSL:**
   <br />
   This mounts your Windows drives to the Linux Subsystem, allowing you to copy or edit Windows files in Linux.
   ```shell
   cd /mnt/c/
   ```
   <br />
3. **Shutting Down WSL:**
   <br />
   Simply closing WezTerm won't work; it needs to be shut down separately.
   ```shell
   wsl --shutdown
   ```

<div align="right">
  
  [Jump to Top](#top)
  
</div>
<br />



# 5. Quick NeoVim Crash Course

This section covers basic operations to ensure your NeoVim journey begins as smoothly as possible, as there are certain shortcuts you'll need to memorize.

1. **Open A File:**
   ```shell
   vi file_name
   ```
   <br />
2. **Save Changes:**
   * **Save**
     <br />
     Press `esc` to enter normal mode, then type `:w` and hit enter.
     <br />
     <br />
   * **Save and Exit**
     <br />
     Press `esc` to enter normal mode, then type `:x` and hit enter.
   <br />
   <br />
3. **Exit a File:**
   * **Exit**
     <br />
     Press `esc` to enter normal mode, then type `:q` and hit enter.
     <br />
     <br />
   * **Force Exit Without Saving**
     <br />
     Press `esc` to enter normal mode, then type `:q!` and hit enter.
     <br />
     <br />
4. **Undo:**
   Press `esc` to enter normal mode, then type `u`.
   <br />
   <br />
5. **Redo:**
   Press `esc` to enter normal mode, then type `CTRL+r`.
   <br />
   <br />
6. **Edit a File:**
   Press `i` to enter insert mode.
   <br />
   <br />
7. **Copy And Paste:**
   * **Copy**
     <br />
     Press `v` to enter visual mode, select the text, then press `y` to yank (copy).
     <br />
     <br />
   * **Paste**
     <br />
     Press `p` to paste the copied text after the cursor.
     <br />
     <br />
8. **Open Database Tool:**
   <br />
   Press `esc` to enter normal mode, then type `:Dbee`.
   <br />
   Now, you could configure a database, for example: `postgres://user:password@localhost:5432/mydb`.

<div align="right">
  
  [Jump to Top](#top)
  
</div>
<br />



# 6. Discord Custom Rich Presence

If you want others to see your activity in NeoVim through Discord's Rich Presence, there’s both bad and good news.
<br />
The bad news: WSL2 doesn't support this feature, so it's not possible to directly link your application to Discord.
<br />
The good news: There is a workaround.
<br />
<br />

With this configuration, Discord will always display NeoVim as your Rich Presence whenever WSL is launched, not just NeoVim.
<br />
This implementation was chosen for its smoother performance and user experience.
<br />
NeoVim is the primary tool used in most sessions of this development environment, making it a natural fit for the workflow.

1. **Install CustomRP:**
   <br />
   Visit <a href="https://github.com/maximmax42/Discord-CustomRP">this repository</a> to continue.
   <br />
   Then come back.
   <br />
   <br />
2. **CustomRP Preset:**
   <br />
   Create a preset and move the (.crp) file to a location of your choice.
   <br />
   For example, `C/Users/your_name/your_preset.crp`
   <br />
   <br />
3. **Copy The Start CustomRP Script:**
   After configuring CustomRP, move the `start_customrp.sh` script from its current location in the repository (`/wsl/etc/profile.d/start_customrp.sh`)
   to your own profile directory at `/etc/profile.d`.
   <br />
   Then, modify the path in the `start_customrp.sh` script to reflect the location of your CustomRP preset.
   <br />
   <br />
4. **Make It Executable:**
   ```shell
   chmod +x  /etc/profile.d/start_customrp.sh
   ```
   <br />
5. **Create a Simlink:**
   ```shell
   ln -s /mnt/c/Users/name/AppData/Roaming/CustomRP/CustomRP.exe /bin/customrp
   ```
   <br />
6. **Copy The Start Service:**
   <br />
   Relocate the `start_customrp.service`  file from the repository to your system's service directory (`/etc/systemd/system/start_customrp.service`).
   <br />
   <br />
   Enable The Service:
   ```shell
   systemctl enable start_customrp.service
   ```

<div align="right">
  
  [Jump to Top](#top)
  
</div>
<br />



# 7. Additional Information

Here is some information that is not specific to any particular topic but is still important to mention.

**Health Check**
<br />
Health checks may display warnings and errors. 
<br />
These often relate to tools I currently don't utilize, so installing every suggested fix might introduce unnecessary bloat. 
<br />
However, if you actively use a tool like Python, it's advisable to address the health check hints for optimal performance and security.
<br />
To use `groovyls`, which requires Java 11 or later, I installed the necessary Java Development Kit (JDK) using the following command:
```shell
apt install openjdk-17-jdk
```
<br />
<br />

**Issues With Groovy**
<br />
Please note that installing `groovyls` and its Java dependency is optional and based on my personal preference.
<br />
If you don't require `Groovy`, you can safely remove them without affecting the overall system functionality.
<br />
<br />

**LSP Log Errors**
<br />
The `/root/.local/state/nvim/lsp.log` file may contain error messages related to language servers.
<br />
For instance, if you encounter issues with the Bash, TypeScript, Tailwind CSS, or VS Code JSON language servers, you can install or reinstall them within Neovim.
<br />
Press `esc` to enter normal mode, then type `:MasonInstall bash-language-server typescript-language-server tailwindcss-language-server vscode-json-language-server` and press Enter.
<br />
<br />

**Installation Issues**
<br />
Treesitter may face issues during installation because it attempts to install immediately on startup.
<br />
To resolve this manually, open NeoVim and run `:TSInstall`.
<br />
The problem seems related to loading a specific specification.
<br />
<br />


**Menu Select**
<br />
To select a different launch menu, press `CRTL` + `l` while in the shell.

<div align="right">
  
  [Jump to Top](#top)
  
</div>
<br />



# 8. Contact Me

Johannes Bausch - [Portfolio](https://johannes-bausch.com) - private@johannes-bausch.com

Project Link: [https://github.com/johannesbausch/dotfiles](https://github.com/johannesbausch/dotfiles)

<div align="right">
  
  [Jump to Top](#top)

</div> 
<br />



# 9. License

This project is licensed under the Unlicense License. See [License](https://github.com/johannesbausch/dotfiles/blob/main/LICENSE) for more details.

<div align="right">
  
  [Jump to Top](#top)

</div>
<br />



# 10. Credits

Credit where credit's due.

<a href="https://github.com/simonkovtyk"><img src="https://contrib.rocks/image?repo=simonkovtyk/dotfiles" alt="contrib.rocks image" /></a>

<div align="right">
  
  [Jump to Top](#top)

</div>
<br />

<!-- markdown reference-style-links (shields) -->
[forks-shield]: https://img.shields.io/github/forks/johannesbausch/dotfiles.svg?style=for-the-badge
[forks-url]: https://github.com/johannesbausch/kickstarter-repository/network/members
[stars-shield]: https://img.shields.io/github/stars/johannesbausch/kickstarter-repository.svg?style=for-the-badge
[stars-url]: https://github.com/johannesbausch/kickstarter-repository/stargazers
[license-shield]: https://img.shields.io/github/license/johannesbausch/kickstarter-repository.svg?style=for-the-badge
[license-url]: https://github.com/johannesbausch/kickstarter-repository/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/johannesbausch
