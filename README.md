# Crystal Ctags

[![Linux Build][travis-image]][travis-url]
[![Shards version][shards-image]][shards-url]


Tool for generation `ctags` for **Crystal**

![Screenshot][screenshot-image]


## Installation

From sources:

```sh
$ cd ~/Projects
$ git clone https://github.com/SuperPaintman/crystal-ctags
$ cd ./crystal-ctags
$ make
$ sudo make install
$ # or
$ sudo make reinstall
```


--------------------------------------------------------------------------------

## Usage

```sh
$ crystalctags -h
```


--------------------------------------------------------------------------------

## Test

```sh
$ crystal spec
# or
$ make test
```


--------------------------------------------------------------------------------

## Use with
### VIM: TagBar

```vim
let g:tagbar_type_crystal = {
    \'ctagstype': 'crystal',
    \'ctagsbin': 'crystalctags',
    \'kinds': [
        \'c:classes',
        \'m:modules',
        \'d:defs',
        \'x:macros',
        \'l:libs',
        \'s:sruct or unions',
        \'f:fun'
    \],
    \'sro': '.',
    \'kind2scope': {
        \'c': 'namespace',
        \'m': 'namespace',
        \'l': 'namespace',
        \'s': 'namespace'
    \},
\}
```


--------------------------------------------------------------------------------

## Contributing

1. Fork it (<https://github.com/SuperPaintman/crystalctags/fork>)
2. Create your feature branch (`git checkout -b feature/<feature_name>`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin feature/<feature_name>`)
5. Create a new Pull Request


--------------------------------------------------------------------------------

## Contributors

- [SuperPaintman](https://github.com/SuperPaintman) SuperPaintman - creator, maintainer


--------------------------------------------------------------------------------

## API
[Docs][docs-url]


--------------------------------------------------------------------------------

## Changelog
[Changelog][changelog-url]


--------------------------------------------------------------------------------

## License

[MIT][license-url]


[license-url]: LICENSE
[changelog-url]: CHANGELOG.md
[docs-url]: https://superpaintman.github.io/crystalctags/
[screenshot-image]: README/screenshot.png
[travis-image]: https://img.shields.io/travis/SuperPaintman/crystalctags/master.svg?label=linux
[travis-url]: https://travis-ci.org/SuperPaintman/crystalctags
[shards-image]: https://img.shields.io/github/tag/superpaintman/crystalctags.svg?label=shards
[shards-url]: https://github.com/superpaintman/crystalctags

