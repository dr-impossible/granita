# Granita

Granita is a gem for simplifying the process of importing seed data from CSV files.

Granita is also a semi-frozen dessert made from sugar, water, and various flavourings, much akin to a Slurpee.

## Installation

Add this line to your application's Gemfile:

    gem 'granita'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install granita

## Typical Usage

Import the Granita module into your seed file and call slurp_csv for each ActiveRecord table you want to populate.

```ruby
require 'granita'

import Granita

slurp_csv 'path/to/data.csv', DataClass
```

This will create a DataClass instance for each row of data in the CSV file. Columns are matched using the values of the first row of the file.

Optionally, you may wish to provide a block for additional processing of rows before they are instantiated:

```ruby
slurp_csv 'path/to/data_2.csv', DataClass do |row|
  # remove whitespace from the beginning and end of the title field
  row[:title].strip!

  # creates a url key from the title
  row[:url_key] = row[:title].parameterize
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
