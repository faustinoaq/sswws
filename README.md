# sswws

A single click single file web server for Windows

![image](https://user-images.githubusercontent.com/3067335/216237527-4d1d1d8b-d3ab-4fdc-9676-71dd43a4ecf8.png)


- **Does this already exist?** probably yes
- **Was I able to use my google-fu to find it?** no, all I found was `python -m http.sever`. I don't want to install Python in every Windows machine.

I want a single click web server for Windows that I can trust and execute in a single file not depending in external bloated tools.

## Installation

It is portable! :sparkles:

## Usage

Download the exe from the release page and single click `sswws.exe` then open http://127.0.0.1:8080/

Also you have some options:

```
C:\> .\sswws.exe -h
Usage: sswws [arguments]
    -v, --version                    Server version
    -p PORT, --port=PORT             Specifies the port to run on (default 8080)
    -i IP, --ip=IP                   Specifies the ip to run on (default 127.0.0.1)
    -d DIR, --dir=DIR                Specifies the directory to run on (default same dir)
    -h, --help                       Show this help
```

## Development

Follow [these instructions](https://crystal-lang.org/install/on_windows/) to get the language dev kit

1. Build executables `shards build`
2. Run specs `crystal spec`
3. Run executable `shards run` or just click the `sswws.exe` file inside your bin directory.

## Contributing

1. Fork it (<https://github.com/faustinoaq/sswws/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [@faustinoaq](https://github.com/faustinoaq) - creator and maintainer
