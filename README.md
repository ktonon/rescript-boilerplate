# ReScript Boilerplate Project

This is an empty ReScript example project.

> Disclaimer: I created this small project as a learning resource. At this time I'm new to ReScript and this setup may not reflect recommended practices.

## Folder structure

It contains a single module under `src/` called `Demo` and a single test module under `test/` called `DemoTest` to exercise the `Demo` module.

```
src/
    Demo.res
test/
    DemoTest.res
```

Running `npm run res:build` runs the ReScript compiler and produces these generated files:

```
src/
    Demo.res.mjs -- Compiled JavaScript module
    Demo.gen.tsx -- Typescript definitions
```

See the [@genType documentation](https://rescript-lang.org/docs/manual/latest/typescript-integration) for help on generating TypeScript definitions.

## Unit testing

The project uses the [rescript-test](https://github.com/bloodyowl/rescript-test) package.

Run the tests with:

```shell
> npm run res:test
```

Unfortunately `rescript-test` does __not__ contain a `--watch` flag (at this time), so this project uses `nodemod` to watch the `.res` files and then recompile and run the tests.

To run the test watcher:

```shell
> npm run res:test:watch
```

## Formatting

The recommend VSCode extension is [rescript-vscode](https://marketplace.visualstudio.com/items?itemName=chenglou92.rescript-vscode). After installing it, configure the default formatter for rescript by editing `Preferences: Open User Settings (JSON)` and adding the following:

```json
{
    "[rescript]": {
        "editor.defaultFormatter": "chenglou92.rescript-vscode",
        "editor.formatOnSave": true
    },
}
```
