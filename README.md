# JSONAPI::Types

[![Gem](https://img.shields.io/gem/v/jsonapi-types.svg?style=flat)](http://rubygems.org/gems/jsonapi-types)
[![CircleCI](https://img.shields.io/circleci/project/github/InspireNL/jsonapi-types.svg)](https://circleci.com/gh/InspireNL/jsonapi-types)

Implementation of the [JSON:API Spec](http://jsonapi.org) definitions using inmutable types.

Links:

  - [API Docs](https://www.rubydoc.info/gems/jsonapi-types)
  - [Contributing](https://github.com/InspireNL/jsonapi-types/blob/master/CONTRIBUTING.md)
  - [Code of Conduct](https://github.com/InspireNL/jsonapi-types/blob/master/CODE_OF_CONDUCT.md)

## Requirements

1. [Ruby 2.5.0](https://www.ruby-lang.org)

## Installation

To install, run:

```
gem install jsonapi-types
```

Or add the following to your Gemfile:

```
gem "jsonapi-types"
```

## Usage

```ruby
require "jsonapi-types"

payload  = { data: { id: "1", type: "users" } } # or a JSON string
document = JSONAPI::Types::Success.parse(payload)
=> #<JSONAPI::Types::Success links=nil jsonapi=nil data=#<JSONAPI::Types::Resource id="1" type="users" resource_attributes={} relationships=nil links=nil> meta=nil included=nil>

payload  = { errors: [{ id: "100", titee: "Invalid name." }] } # or a JSON string
document = JSONAPI::Types::Failure.parse(payload)
=> #<JSONAPI::Types::Failure links=nil jsonapi=nil meta=nil errors=[#<JSONAPI::Types::Error id="100" code=nil title=nil detail=nil status=nil meta=nil links=nil source=nil>]>
```

## Tests

To test, run:

```
bundle exec rspec spec/
```

## Versioning

Read [Semantic Versioning](https://semver.org) for details. Briefly, it means:

- Major (X.y.z) - Incremented for any backwards incompatible public API changes.
- Minor (x.Y.z) - Incremented for new, backwards compatible, public API enhancements/fixes.
- Patch (x.y.Z) - Incremented for small, backwards compatible, bug fixes.

## License

Copyright 2018 [Inspire Innovation BV](https://inspire.nl).
Read [LICENSE](LICENSE.md) for details.
