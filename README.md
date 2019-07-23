# Docker setup to use for Laravel apps
This is a very simple docker setup. It is ready to get used for Laravel apps development. It might be some adjustments to be used on production.  
It is mainly taken from the book: [https://leanpub.com/docker-for-php-developers](Docker for PHP Developers - Paul Redmond).

## Usage
```bash
git clone git@github.com:seebaermichi/docker-laravel-dev.git project-name
cd ./project-name
rm -fr ./.git
# If not already available
composer global require laravel/installer
laravel new src
```
After this you should have all required Laravel files within the src folder. There you would also find the `.env` file where you should make sure that the settings for the database match what is added in the `docker-compose.yml` at the `mariadb` service.

## License
docker laravel dev is released under the MIT License. See [LICENSE][1] file for details.
                   
[1]: https://github.com/seebaermichi/vue-boilerplate/blob/master/LICENSE
