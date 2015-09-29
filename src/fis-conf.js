// fis.project.setProjectRoot('src/');
fis.set('project.md5Connector', '.');
fis.hook('commonjs', {
    paths: {
        'react': '/node_modules/react/dist/react.js',
        'redux': '/node_modules/redux/dist/redux.js',
        'react-redux': '/node_modules/react-redux/dist/react-redux.js'
    }
});

fis.match('**/_*.scss', {
        release: false
    })
    .match('*.coffee', {
        parser: fis.plugin('coffee-script', {
            bare: true
        }),
        rExt: 'js',
        isMod: true,
        useMap: true
    })
    .match(/^\/node_modules\/(.+)\.js$/i, {
        isMod: true
    })
    .match(/^\/modules\/(.+)\.js$/, {
        isMod: true
    })
    .match(/main\.coffee|mod\.js/, {
        isMod: false
    })
    .match(/^\/dev/i, {
        release: false
    })
    .match('**.md', {
        release: false
    })
    .match('package.json', {
        release: false
    })
    .match('MIT-LICENSE', {
        release: false
    })
    .match('::package', {
        prepackager: fis.plugin('csswrapper'),
        postpackager: [fis.plugin('loader', {
            resourceType: 'mod',
            useInlineMap: true // 资源映射表内嵌
        })]
    });


fis.media('dev')
    .match('*', {
        deploy: fis.plugin('local-deliver', {
            to: '../dev'
        })
    });