# cfnv

FNV Hash for Crystal
Support bit

 * 32bit
 * 64bit


## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  cfnv:
    github: moba1/cfnv
```

## Usage

```crystal
require "cfnv"

data = "😀😅😥"

p Cfnv.fnv1a(data.bytes, Cfnv::Parameter::Bit32.new)
```

## Contributing

1. Fork it ( https://github.com/moba1/cfnv/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [moba1](https://github.com/moba1)  - creator, maintainer
