import route from 'riot-route';
import './tag/core/menu.tag';
import './tag/page/home.tag';
import './tag/page/title.tag';
import './tag/page/manage/manage.tag';
import './tag/page/manage/insect.tag';
import './tag/page/manage/phone/phone_home.tag';
import './tag/page/manage/phone/phone_manage.tag';
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
    })
    r('home', () => {
      this._loadview('home')
    })
    r('manage', () => {
      this._loadview('manage')
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
  }
}

export default new Router()
