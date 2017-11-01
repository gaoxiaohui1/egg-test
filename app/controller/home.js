'use strict';

module.exports = app => {
  class HomeController extends app.Controller {
    * index() {
      const requestType = this.ctx.get("X-Requested-With");
      if (requestType === "XMLHttpRequest") {
        const data = {
          list: [{ city: '北京', name: '张三12', time: '1999-1-1' },
          { city: '北京', name: '张三12', time: '1999-1-1' },
          { city: '北京', name: '张三12', time: '1999-1-1' },
          { city: '北京', name: '张三12', time: '1999-1-1' },
          { city: '北京', name: '张三12', time: '1999-1-1' },
          { city: '北京', name: '张三12', time: '1999-1-1' },
          { city: '北京', name: '张三12', time: '1999-1-1' }]
        }
        yield this.ctx.render('home/data.tpl', data)
      } else {
        const data = { city: '城市', name: '名字', time: '时间' }
        yield this.ctx.render('home/index.tpl', data)
      }

    }
    * list() {
      const data = {
        list: [{ city: '北京', name: '张三1', time: '1999-1-1' },
        { city: '北京', name: '张三1', time: '1999-1-1' },
        { city: '北京', name: '张三1', time: '1999-1-1' },
        { city: '北京', name: '张三1', time: '1999-1-1' },
        { city: '北京', name: '张三1', time: '1999-1-1' },
        { city: '北京', name: '张三1', time: '1999-1-1' },
        { city: '北京', name: '张三1', time: '1999-1-1' }]
      }
      yield this.ctx.render('home/data.tpl', data)
    }
  }
  return HomeController;
};
