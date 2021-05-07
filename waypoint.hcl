project = "learn-waypoint-lambda"

app "learn-waypoint-lambda" {
  build {
    use "docker" {}

    registry {
      use "aws-ecr" {
        region = "us-east-2"
        repository = "learn-eks"
        tag = "hello-waypoint-lambda"
      }
    }
  }

  deploy {
    use "aws-lambda" {
      region = "us-east-2"
    }
  }

  release {
    use "aws-alb" {
    }
  }
}