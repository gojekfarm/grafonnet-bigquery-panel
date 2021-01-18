# Bigquery Panel extension for grafonnet
A library that extends [Grafonnet lib](https://github.com/grafana/grafonnet-lib) with a Bigquery panel for the [Bigquery Plugin](https://grafana.com/grafana/plugins/doitintl-bigquery-datasource)

We have tested this on v1.0.8 of the plugin, but it should work with the later 1.x releases of the plugin.

## Getting Started
### Prerequisites 
Install [Grafonnet](https://grafana.github.io/grafonnet-lib/getting-started/** on your local machine

### Clone from Git
Clone the repository into the working directory, in the same place that you cloned grafonnet.
```git@github.com:gojekfarm/grafonnet-bigquery-panel.git```

#### OR

### Using the Jsonnet Bundler
```
{
  "dependencies": [
    {
      "source": {
        "git": {
          "remote": "https://github.com/grafana/grafonnet-lib",
          "subdir": "grafonnet"
        }
      },
      "version": "master"
    },
    {
      "source": {
        "git": {
          "remote": "git@github.com:gojekfarm/grafonnet-bigquery-panel.git",
        }
      },
      "version": "master"
    }
  ],
  "legacyImports": true
}
```

### Import the plugin in your jsonnet code
```
local grafana = (import 'grafonnet/grafana.libsonnet')
              + (import 'grafonnet-bigquery-panel/bigquery.libsonnet');
```


## Examples of Usage
See the tests for an example
