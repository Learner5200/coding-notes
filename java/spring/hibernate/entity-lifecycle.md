# Entity Lifecycle

* Series of states that an entity passes through in the course of a hibernate application.

## Lifecycle operations

* **Detach** - detach so not associated with a hibernate session
* **Merge** - reattach to a session
* **Persist** - transitions new instance of entity to a 'managed state', ready to be saved in next commit
* **Remove** - gets managed entity ready for removal, ready to be deleted from DB in next commit
* **Refresh** - reload/sync object with data from DB


## Lifecycle states

![lifecycle](images/2019/03/lifecycle.png)
