@FlasherApp.controller 'FlasherCtrl',
['$scope', ($scope)->
  $scope.icons = ['glyphicon-camera',
  				  'glyphicon-lock',
  				  'glyphicon-eye-open',
  				  'glyphicon-cloud',
  				  'glyphicon-heart',
  				  'glyphicon-tower']
  
  $scope.appliedClass = (iconCLass) ->
  	if iconCLass
      iconCLass
  
  $scope.active = false
  
  $scope.rowNumberMultiple = ->
  	$scope.iconSeen = _.sample(_.range(1, 601))
  	dividend      = $scope.iconSeen + _.sample(_.range(1, 50))
  	divisor       = _.sample([2,3,4,5,6])
  	$scope.active = dividend % divisor == 0


  $scope.click = ->
    $scope.active = !$scope.active
    $scope.color  = _.sample(['blue','red','white'])
    $scope.randomIcon = _.sample($scope.icons)
  
]
