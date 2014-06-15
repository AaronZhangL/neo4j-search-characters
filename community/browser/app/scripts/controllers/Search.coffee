###!
Added by Aaron.Z
###

'use strict'
# TODO: maybe skip this controller and provide global access somewhere?
angular.module('neo4jApp.controllers')
  .controller 'SearchCtrl', [
    '$scope'
    'Search'
    'motdService'
    ($scope, Search, motdService) ->
      $scope.search = Search
      $scope.motd = motdService

      $scope.star = ->
        unless Search.document
          $scope.toggleDrawer("scripts", true)
        Search.saveDocument()
  ]
