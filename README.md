# Sentimentia

Filter sentences in a specified text file by sentiment analyais value range. 
Uses [Treat](https://github.com/louismullie/treat) for sentence segmentation
and [sentimental](https://github.com/7compass/sentimental) for sentiment 
analysis.

## Installation

Add this line to your application's Gemfile:

    gem "sentimentia"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sentimentia

## Usage

### Command line

```bash
# Output sentences with sentiment analysis values equal to or greater than
# -4.0 and less than or equal to 1.0

sentimentia wuthering-heights.txt -4.0 1.0
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
