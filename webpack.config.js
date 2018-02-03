const path = require('path');
const webpack = require('webpack');

module.exports = {
  entry: './src/main.js',
  output: {
    filename: 'bundle.js',
    path: path.join(__dirname, './www/javascripts')
  },
  module: {
    rules: [
      {
        enforce: 'pre',
        test: /\.tag$/,
        exclude: /node_modules/,
        use: [{
          loader: 'riotjs-loader',
          options: {
            type: 'none'
          }
        }],
      },
      {
        test: /\.(tag|js)$/,
        exclude: /node_modules/,
        loader: 'babel-loader',
        options: {
          presets: ['es2015-riot']
        }
      }
    ]
  },
  devtool: 'source-map',
  plugins: [
    new webpack.optimize.UglifyJsPlugin({
      sourceMap: true
    }),
    new webpack.optimize.ModuleConcatenationPlugin(),
    new webpack.optimize.OccurrenceOrderPlugin(),
    new webpack.optimize.AggressiveMergingPlugin(),
    new webpack.ProvidePlugin({
      riot: 'riot',
      $: 'jquery',
      jQuery: 'jquery',
      'window.jQuery': 'jquery',
    })
  ]
};
