pipeline {
   agent {
      docker {
         image "ruby"
         args "--link selenium_server"
      }
   }
   stages {
      stage("build") {
         steps {
           sh "bundle install"
         }
      }
     stage("Run Tests") {
        steps {
          sh "bundle exec cucumber -p ci"
          cucumber buildStatus: 'null', customCssFiles: '', customJsFiles: '', failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: '**/*.json', jsonReportDirectory: 'log', pendingStepsNumber: -1, skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
        }
      }
   }
}
