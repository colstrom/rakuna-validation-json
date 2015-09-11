# rakuna-validation-json

Schema-based JSON validation for Rakuna and Webmachine!

# Description

Adds support for validating JSON objects against a JSON schema to your Webmachine resources. For documentation regarding schemas, refer to `json-schema`. Documentation for using it with Rakuna and Webmachine can be found right here.

# Installation
`gem install rakuna-validation-json`

# Usage
`require 'rakuna/validation/json'`

## Examples

### Example payload must contain a string property "session".
```ruby

class ExampleResource < Rakuna::Resource::Action
  def json_schema
    {
      'type' => 'object',
      'required' => ['session'],
      'properties' => {
        'session' => { 'type' => 'string' }
      }
    }
  end

  def malformed_request?
    true unless json_valid?
  end
end
```

# Contributing
  * Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
  * Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
  * Fork the project.
  * Start a feature/bugfix branch.
  * Commit and push until you are happy with your contribution.
  * Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
  * Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

# License
[MIT](https://tldrlegal.com/license/mit-license)

# Contributors
  * [Chris Olstrom](https://colstrom.github.io/) | [e-mail](mailto:chris@olstrom.com) | [Twitter](https://twitter.com/ChrisOlstrom)
