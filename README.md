# Weather forecaster app with Ruby on Rails 


## Scope

1. Must be done in Ruby on Rails
2. Accept an address as input
3. Retrieve forecast data for the given address. This should include, at minimum, the current temperature (Bonus points - Retrieve high/low and/or extended forecast)
4. Display the requested forecast details to the user
5. Cache the forecast details for 30 minutes for all subsequent requests by zip codes.
6. Display indicator if result is pulled from cache.

## Set up Rails

This app is developed on a MacBook Pro Intel Core i9  with macOS Ventura.

### Install RVM

I like to use the `rvm` version manager to install software such as programming languages, because `rvm` makes it easier for me to manage multiple versions, environment paths, and dependencies.

# Installing RVM (Ruby Version Manager)

### 1. Open a Terminal
   - On Linux or macOS, you can use the built-in Terminal.
   - On Windows, you might need to use a tool like Git Bash.

### 2. Install GPG Keys
   Run the following command to install GPG keys for RVM:
   ```bash
   gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
   ```

### 3. Install RVM
   Install RVM using the following command:
   ```bash
   \curl -sSL https://get.rvm.io | bash -s stable
   ```

### 4. Load RVM
   To start using RVM, load it into your shell:
   ```bash
   source ~/.rvm/scripts/rvm
   ```

### 5. Verify Installation
   Confirm that RVM is installed:
   ```bash
   rvm --version
   ```

### 6. Install Dependencies
   RVM might ask you to install some dependencies. Follow the on-screen instructions.

### 7. Install Ruby
   Install a specific version of Ruby. For example, to install Ruby 2.7, run:
   ```bash
   rvm install 2.7
   ```

### 8. Set Default Ruby Version
   Set the newly installed Ruby as the default version:
   ```bash
   rvm use 2.7 --default
   ```

### 9. Check Ruby Version
   Confirm that the correct Ruby version is now in use:
   ```bash
   ruby -v
   ```

You've successfully installed RVM and a specific version of Ruby. This allows you to easily manage different Ruby environments for your projects. If you encounter any issues, feel free to ask for further assistance.

### Install Rails

Install Ruby on Rails:

```sh
% gem install rails
```

### Download Project
```sh
% git clone git@github.com:mzaragoza/forcast.git
% cd forcast
% bundle install
```
