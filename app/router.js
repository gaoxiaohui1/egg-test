'use strict';

module.exports = app => {
  app.get('/', 'home.index');
  app.get('/news', app.controller.news.index);
  app.get('/news/:id', app.controller.news.detail);
};
