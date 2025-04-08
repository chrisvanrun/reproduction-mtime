# Recipe

Run the `./test.sh`. Observe two runs output the same to stdout:

> docker run --rm test-a

`Hello from version A`


> docker run --rm test-b

`Hello from version A`

Eventhough test-b should print 'version B'.

And that this is dispite:
- Different paths
- An additional step BEFORE the `COPY script.py`
- `--no-cache` on the build of `test-b`

Changing the direct parent directory (`example/`) or different mtime prevents this from happening.
