<div align="center">

# Nostradamus-js action

[![Marketplace](https://img.shields.io/badge/GitHub-Marketplace-green.svg)](https://github.com/marketplace/actions/nostradamus-js-action) [![Release](https://img.shields.io/github/release/philips-labs/nostradamus-js-action.svg)](https://github.com/philips-labs/nostradamus-js-action/releases) 

This Action checks for new js packages!

> :warning: **Not finished yet**: Work in Progress. 

</div>

## Contents

- [Inputs](#inputs)
- [Outputs](#outputs)
- [Example Usage](#example-usage)
- [Example Project](#example-project)
- [Support](#support)
- [Contributors](#contributors)
- [License](#license)

## Inputs

| Parameter     | Description                                         |
| ------------- | :-------------------------------------------------- |
| sourePath     | source path                                         |

## Outputs

| Parameter       | Description                                         |
| --------------- | :-------------------------------------------------- |
| newDependencies | true or false                                       |

## Example Usage

```yml
new-packages:
  name: Nostradamus
  runs-on: self-hosted
  steps:
  - uses: actions/checkout@v2
    with:
      fetch-depth: 0
  - uses: philips-labs/nostradamus-js-action@main
    id: nostradamus
    with:
      sourcePath: .
  - run: |
      echo "has new dependencies:"
      echo ${steps.nostradamus.outputs.newDependencies}
```

## Example project

[https://github.com/JeroenKnoops/nostradamus-js-action-example](https://github.com/JeroenKnoops/nostradamus-js-action-example)

## Support

Only `yarn` is supported right now.

## Contributors

[Thanks goes to these contributors](https://github.com/philips-labs/nostradamus-js-action/graphs/contributors)!

## License

[MIT License](./LICENSE)
