
# Ruby App to Mass update Formula Fields in Zoho CRM
### What it does ###
1. Retrieves records from Zoho CRM.
2. Updates a value for each record retrieve.
3. Push the changed values to Zoho CRM which trigger the formula field update.

## Details ##
- Ruby Locally
    * Clone and configure the main.rb file
    * Set the environment variables in the .env file
    * Set the search parameters to find the records to update
    * Run the script with `ruby main.rb`
- GitHub
    * [GitHub Repo](https://github.com/epunx2/hh-credit-autoload-ruby)

### How do I get set up? ###

### Mac ###
1. Install Ruby package manager Rbenv and Ruby Build with brew
   ```bash
   $ brew install Rbenv
   $ brew install Ruby build
   ```
2. Set up your shell to load rbenv:
    ```bash
    $ rbenv init
    ```
3. Install Ruby 3.4.3 with Rbenv:
    ```bash
    $ rbenv install 3.4.3
    ```
4. Clone repo:
    ```bash
    $ git clone
    https://github.com/epunx2/zoho-crm-ruby.git
    ```
5. Set local version of Ruby for folder to 3.4.3:
   ```bash
   $ rbenv local 3.4.3
   ```
6. Install bundler
    ```bash
    $ gem install bundler
    ```
7. Install gems
    ```bash
    $ bundle install
    ```

### Making Changes ###
* Make changes
* Test changes
    ```bash
    $ ruby main.rb
    ```
* Push changes to repo
  * Add to staging
  ```bash
  $ git add --all
  ```
  * Commit Changes
  ```bash
  $ git commit -m 'your message'
  ```
  * Push to GitHub *(you may be prompted to enter your GitHub app password)*
  ```bash
  $ git push origin main
  ```

### Who do I talk to? ###

* [Eric Chrobak](mailto:eric.chrobak@gmail.com)
