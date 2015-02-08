class jsdomTests

  tests:[
    {
      name: "envSync - should get a page"
      timeout: 10000
      func: (test, waitFor)->
        console.time('envSync - should get a page')
        window = jsdom.envSync 'http://google.com/', []
        console.timeEnd('envSync - should get a page')
        expect(window).to.be.an('object')
        expect(window.document).to.be.an('object')
    }
    {
      name: "envSync - should get a page and load a script from a url"
      timeout: 10000
      func: (test, waitFor)->
        console.time('envSync - should get a page and load a script from a url')
        window = jsdom.envSync 'http://google.com/', ['http://code.jquery.com/jquery.js']
        console.timeEnd('envSync - should get a page and load a script from a url')
        expect(window.$("body")).to.be.an('object')
    }
  ]

Munit.run(new jsdomTests())
