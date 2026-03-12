from pymongo.mongo_client import MongoClient
import pandas as pd
import json
import pymongo
import certifi


#url
uri = "mongodb+srv://Ashish:mzmYIIb88uLLSVqI@cluster0.p8bzieu.mongodb.net/?appName=Cluster0"

#create a new client and connectt to server
client = MongoClient(uri)


client = MongoClient(uri, tlsCAFile=certifi.where())



#create database name and collection name
DATABASE_NAME="sensor_db"
COLLECTION_NAME='sensorfault'

df=pd.read_csv("C:\Users\Ashish Jana\Downloads\sencer_fault_project\notebooks\wafer_23012020_041211.csv")

df=df.drop("Unnamed: 0",axis=1)

# csv file to json file convert
json_record=list(json.loads(df.T.to_json()).values())

# push in mongo db
client[DATABASE_NAME][COLLECTION_NAME].insert_many(json_record)