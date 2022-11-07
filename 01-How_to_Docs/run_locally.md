---
layout: default
title: Run Locally
parent: How to Docs?
nav_order: 1
---

# Running on a local Server
{: .no_toc}

---

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}


### Installation of RubyGem on Windows
You need to use RubyGem in order to run this jekyll theme 

1. Head to the [RubyInstaller.org](https://rubyinstaller.org/downloads/)
2. Under the option **WITH DEVKIT**
    - Install from the first link
3. The installation procedure begins, you just need to click on 'Next' and let the default options be selected.
4. Make sure the **_Path_** is added to your environment variable
5. After the installation of Ruby, you'll be prompted with _command prompt_ where you just need to click 'Enter'
    - After a period of time, you need to click 'Enter' again
6. Assuming that you have followed the steps properly
    - Your installation should have been successful
    - Open your command prompt and type following command
        -   ```markdown
            gem -v
            ```
        - Output should display the version of RubyGem installed 

### Installing Just the docs using Gem
1. Install the Ruby Gem
    ```bash
    $ gem install just-the-docs
    ```

2. Add Just the docs to your Jekyll site's `_config.yml`
    ```yaml
    theme: "just-the-docs"
    ```

3. Run your local jekyll server
    ```bash
    $ jekyll serve
    ```

4. Your server address in the terminal output would specify the server address.
