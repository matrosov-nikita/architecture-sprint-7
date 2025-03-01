| Роль                                                          | Права роли                                                                | Группы пользователей                      |
|---------------------------------------------------------------|---------------------------------------------------------------------------|-------------------------------------------|
| secrets-reader-role                                           | secrets: get,list,watch                                                   | ИБ специалист                             |
| cluster-reader                                                | pods,deployments,services,configmaps: get,list,watch                      | Разработчики, владельцы                   |
| cluster-admin                                                 | pods,deployments,services,configmaps: create,delete,update,get,list,watch | Инженеры по эксплуатации, DevOps инженеры |
