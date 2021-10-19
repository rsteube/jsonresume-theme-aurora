const path = require("path");
module.exports = require('./webpack.config-helper')({
	isProduction: false,
	devtool: 'cheap-eval-source-map',
	devServer: {
	        port: 8080,
                inline: true,
		contentBase: path.join(__dirname, "src"),
		publicPath: '/assets/'
	},
});
