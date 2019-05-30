# Apache Kafka

## Streaming

* Process of getting some big data from some source (e.g. websites etc) into your cluster (hadoop?) where you can process it, as a flow in real time
* The data streams to your cluster
* Two problems
  - how to get data from different sources into your cluster
  - what do you do with it

## Streaming with Kafka

* A general purpose 'publish/subscribe' messaging system
* Stores incoming messages from **publishers** for some short period of time, and **publishes** them to a stream of data called a **topic** (e.g. weblogs from a given application)
* Kafka's **consumers** can **subscribe** to one or more topics, and receive the data as it's published

## Features

* Scalable
* Fault tolerant
