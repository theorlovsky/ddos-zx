#!/usr/bin/env zx

const ids = argv._.slice(1);

await $`docker kill ${ids}; docker rm ${ids}`;
