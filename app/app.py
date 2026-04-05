from flask import Flask
app = Flask(__name__)

@app.route("/")
def home():
    return '<h1>"Hello, This my DevOps Project"</h1> <br> <p>"Demonstrates end-to-end production-style deployment on AWS using Terraform, Docker, ECR, and GitHub Actions"</p>'

if __name__ == "__main__":
    app.run(host="0.0.0.0")
