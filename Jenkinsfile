pipeline {
   stages {
      stage("build") {
         steps {
           sh "bundle install"
         }
      }
     stage("Run Tests") {
        steps {
          sh "bundle exec cucumber -t @smoker"
        }
      }
   }
}
