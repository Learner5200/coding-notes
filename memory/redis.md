# Redis

## What is it

* Stands for REmote DIctionary Server
* It's a data store that:
  - is fast
  - is in-memory
  - stores data as key-value pairs (a dictionary)


## How it works

* Stores things in memory as opposed to on disk/SSD (as a database would)-->don't have to access disks-->avoid time delays, can access data in microseconds
  - This is still server-side storage
* Maybe think of it midway between session storage in browser, and storage in database
* Various features: versatile data structures, transactions, Lua scripting

## Use cases

* Caching: can serve frequently requested items super-fast
* Chat, messaging and queues
* Gaming leaderboards
* Session store: can store/manage session data for internet applications (e.g. user profiles/credentials)



* **Elasticache** is an Amazon-provided in-memory data store/cache that can be used for redis.
