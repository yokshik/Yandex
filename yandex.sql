# Ответ на первую задачу
select login
from "Couriers" c
where c."id" in
(select o."courierId" from "Orders" o where o."inDelivery" = True);


# Ответ на вторую задачу
select
    track,
    CASE
        when
            finished = True
        then '2'
        when
            "Orders"."inDelivery" = True
        then '1'
        when
            cancelled = True then '-1'
        ELSE '0'
    END status
from "Orders";