import route from 'riot-route';
import './tag/core/menu.tag';
import './tag/page/home.tag';
import './tag/page/title.tag';
import './tag/page/catch/catch.tag';
import './tag/page/catch/map.tag';
import './tag/page/develop/develop.tag';
import './tag/page/record/record.tag';

class Router {
  constructor() {
    route.start(true)
    this._router()
  }

  _router() {
    const r = route.create()
    r('/', () => {
      route('home')
      console.log(1);
    })
    r('home', () => {
      this._loadview('home')
    })
    r('catch', () => {
      this._loadview('catch')
    })
    r('develop', () => {
      this._loadview('develop')
    })
    r('record', () => {
      this._loadview('record')
    })
  }

  _loadview(tagName, params = {}) {
    riot.mount('#content', tagName, params)
    console.log(tagName)
  }
}

export default new Router()
