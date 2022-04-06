---
title: Developer Guide (Publishing)
sidebar_position: 10
---

This is the **last part** of our Developer Guide, you can find a full overview on our [main page](Developer-Guide).

## 先決條件

To start publishing and distributing your addon, you don't really need much.

In fact, you really only need your addon. But there are some tips and best practices of course.

Once you feel confident enough to release your addon (better too early than too late), try to keep the following in mind:

### 1. Your project has a `LICENSE` file

If you don't provide a license, the default of "All Rights Reserved" is assumed.

Even if you do wanna reserve all the rights to the project to yourself, it is a good idea to state this explicitly.

If you need help on choosing a license, check out [ChooseALicense.com](https://choosealicense.com/)

### 2. You know how to compile your project

In order to upload your project anywhere, you need to distribute the compiled `.jar` file of your addon.

If you chose to use Maven for your project (as we suggested in [Part 1](https://github.com/Slimefun/Wiki/blob/master/pages/Developer-Guide-(1-Project-Setup).md)), you can simply run the following command:

```console
mvn clean package
```

Your compiled `.jar` file can then be found inside your `/target/` directory.

### 3. Writing a good description

Every project should have a good description.

Tell users what to expect from installing your addon.

Make sure to provide a list of commands, permissions and features!

You can either provide this description via a `README.md` file on your GitHub repository or by providing it on your project page, or both!

## Uploading the project

To upload your project you first need to choose a platform on where to distribute it.

You are in full control of where your project should be uploaded.

Popular platforms for distributing your project include:

* [SpigotMC](https://www.spigotmc.org/resources/)
* [BukkitDev](https://dev.bukkit.org/bukkit-plugins)
* [PaperMC Forums](https://papermc.io/forums/c/plugin-releases/15)
* [Polymart](https://polymart.org/resources)
* [GitHub Releases](https://docs.github.com/en/free-pro-team@latest/github/administering-a-repository/managing-releases-in-a-repository#creating-a-release)

Alternatively you can also use our [main service for releasing automatic development builds](https://github.com/TheBusyBiscuit/builds#how-to-add-your-own-repository).

## Spreading the word

Once your project has been uploaded, tell others about it!

We recommend all addon developers to feature their addon on our public [Addons page](Addons).

Simply make a new pull request on our wiki repository, you can find a tutorial here:

Expanding-the-Wiki

You can also share your project by posting about it on our [Discord server](https://discord.gg/slimefun).

Upload videos or screenshots to get people excited! But please don't tag anyone.
