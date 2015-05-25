'use strict'

angular.module 'beepBoopWebsiteApp'
.controller 'MainCtrl', ($scope, $http, socket) ->

  $http.get('/api/posts').success (posts) ->
    $scope.posts = posts

  $(window).scroll ->
    $('#cover').css
      opacity: 1 - ($(window).scrollTop() / $(window).height())

  $scope.getColor = (index) ->
    colors = ['#26ADE4', '#FE5F55', '#D6D1B1', '#C7EFCF', '#BA740D']
    colors[index % colors.length]

  $scope.getTile = (index) ->
    tiles = ['tile-33', 'tile-33', 'tile-33', 'tile-50', 'tile-50', 'tile-25', 'tile-75', 'tile-25', 'tile-25', 'tile-25', 'tile-25']
    if index == 0 then 'tile-100 big' else tiles[(index - 1) % tiles.length]
