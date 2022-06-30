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
            script {
                try {
                   sh "bundle exec cucumber -p ci -t @smoker"
                } finally {
                    cucumber buildStatus: 'null', customCssFiles: '', customJsFiles: '', failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: '**/*.json', jsonReportDirectory: 'log', pendingStepsNumber: -1, skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
                }
            }
        }
      }
   }
}
