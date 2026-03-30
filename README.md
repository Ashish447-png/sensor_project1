## My mechine Learning project
## problem statement --> 
  [sensor problem statement.pdf](https://github.com/user-attachments/files/26186893/sensor.problem.statement.pdf)


###  1.How to Setup Locally
To set up the project locally, follow these steps:

### 2.Clone the repository:

git clone (https://github.com/Ashish447-png/sensor_project1.git)
cd myntra-review-scraper
### 3.Create a new conda environment and activate it

conda create -p ./env python=3.13 -y
#to activate the environment
conda activate ./env 
#or 
source activate ./env
Install dependencies:

pip install -r requirements.txt

### 4. connect to your Mongodb URL

### 5.Run the  application:
   python app.py

Access the application in your web browser at http://localhost:5000.




### MongoDB Integration

This project uses MongoDB as the backend database to store sensor data during the training phase. All incoming data from sensors is efficiently saved in the database, enabling easy access, preprocessing, and analysis for machine learning workflows.

A dedicated database connection module is implemented to ensure a smooth and reliable connection with MongoDB. This abstraction simplifies database operations such as inserting, retrieving, and managing data, making the system more scalable and developer-friendly.

By leveraging MongoDB, the project ensures flexible schema design and efficient handling of large volumes of sensor data, which is essential for building robust fault detection models.

streamlit run app.py

