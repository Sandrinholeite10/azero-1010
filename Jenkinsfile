pipeline {
   stages {
     stage("build") {
      sh "bundle install"
     }
     stage("Run Tests") {
        sh "bundle exec cucumber -t @smoker"
     }
   }
}
