ls
cd source/
ls
cat a
cat package.json 
exit
ls
cd source/
ls
npm install 
npm fund 
ls
./node_modules/.bin/wdio config -y
npm fund 
ls
mkdir -p ./specs
cd specs/
ls
vim basic.js
echo "const assert = require('assert')

describe('webdriver.io page', () => {
    it('should have the right title', () => {
        browser.url('https://webdriver.io')
        const title = browser.getTitle()
        assert.strictEqual(title, 'WebdriverIO · Next-gen WebDriver test framework for Node.js')
    })
})" > basic.js 
cat basic.js 
cat basic.js 
ls
cd ..
ls
./node_modules/.bin/wdio wdio.conf.js
vim wdio.conf.js 
exit
ls
vim wd
cd source/
ls
vim wdio.conf.js 
ls
npm test
ls
ls
./node_modules/.bin/wdio wdio.conf.js
ls
exit
