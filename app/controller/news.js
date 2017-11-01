'use strict';

module.exports = app => {
  class NewsController extends app.Controller {
    * index() {
      const data = {
        list: [
          { id: 1, title: 'news title one' },
          { id: 2, title: 'news title two' }
        ]
      }
      yield this.ctx.render('news/list.tpl', data)
    }
    * detail() {
      const list = [
        { id: 1, title: 'news title one', name: 'this is name', time: 'this is time', content: 'this is the content' },
        { id: 2, title: 'news title two', name: 'this is name', time: 'this is time', content: 'this is the content' },
        { id: 3, title: 'news title three', name: 'this is name', time: 'this is time', content: 'this is the content' }
      ]
      const id = this.ctx.params.id
      const detaiData = list.find(x => x.id == id)
      yield this.ctx.render('news/detail.tpl', detaiData)
    }
  }
  return NewsController;
};
