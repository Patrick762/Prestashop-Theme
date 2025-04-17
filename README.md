# Prestashop Theme

This Template allows you to quickly start developing a prestashop child theme with docker.

Start with `make start`

Open shell with `make shell`

## Shop

http://localhost:8080

## Backoffice

http://localhost:8080/admin1234

User: `demo@prestashop.com`
PW: `prestashop_demo`

## Setup

Change Theme:

Open Backoffice -> Improve -> Design -> Theme & Logo

Select `Custom Child Theme`

## Change Theme

You can override everything from the classic theme: https://github.com/PrestaShop/classic-theme/tree/develop/templates

Just use the same "path" to the file.

Example:

themes/child_theme/templates/catalog/product.tpl
```tpl
{extends file='parent:catalog/product.tpl'}

{block name='product_description_short'}
    Default description
{/block}
```

This will override the description from the default theme.

You can also define stylings in themes/child_theme/assets/css/style.css

After each change you have to clear the cache.
In Backoffice open Configure -> Advanced Parameters -> Performance

## Deployment

If you finished your theme or just want to export it, you need to change the name in the config in themes/child_theme/config/theme.yml.

Just rename `name` (the id of your theme, has to be the same as the path below themes), `display_name` and `assets.css.all.id`.
Don't forget to also rename the directory.

if you want to use the renamed theme inside this repo again, you also have to change the mount directory in the docker-compose.yml in `services.prestashop.volumes`.
