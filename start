#!/usr/bin/env zx

const {
  _,
  name,
  label,
  rm,
  ...mhddosArgs
} = argv;

const targets = _.slice(1);

if ('c' in mhddosArgs && targets.length) {
  console.log('Both targets and config are provided, you should choose only one of them');
  await quiet($`exit 1`);
}

const mhddosFlags = Object.entries(mhddosArgs).map(([key, value]) => {
  return `${key.length === 1 ? '-' : '--'}${key}=${value}`;
});

const dockerFlags = ['-dit', rm ? '--rm' : '--restart=unless-stopped', '--pull=always'];

if (name) {
  dockerFlags.push(`--name=${name}`);
}

if (label) {
  if (!Array.isArray(label)) {
    dockerFlags.push(`--label=${label}`);
  } else {
    label.forEach((value) => {
      dockerFlags.push(`--label=${value}`);
    });
  }
}

await $`docker run ${dockerFlags} portholeascend/mhddos_proxy:latest ${targets} --debug ${mhddosFlags}`;
