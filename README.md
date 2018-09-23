Source for the Rainmeter homepages. To view the actual site, check out [rainmeter.net](http://rainmeter.net).

Built using [Hexo](https://github.com/hexojs/hexo). Content licensed under [Creative Commons BY-NC-SA 3.0](http://creativecommons.org/licenses/by-nc-sa/3.0/).


## Installation

You need to have Node v8.11.1 and Git installed.

``` bash
$ git clone https://github.com/rainmeter/rainmeter-www.git
$ npm install hexo-cli -g
```

## Usage

``` bash
$ npm run start     # Starts the local webserver for development.
$ npm run build     # Generates the static files in _generated.
$ npm run deploy    # Generates and deploys the files.
$ npm run clean     # Cleans the cache file (db.json) and generated files (public).
```

If you want to deploy the website yourself, you have to modify the `_config.yml` file to your settings. You also might have to install additional packages, read more about this [Hexo Documentation: Deployment](here:https://hexo.io/docs/deployment)

Please keep of using the built-in Hexo commands as this website uses [postcss-cli](https://github.com/postcss/postcss-cli) to automatically add vendor prefixes to some CSS properties and minify the file at build time.