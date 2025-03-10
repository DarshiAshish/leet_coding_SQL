-- Write your MySQL query statement below
select p.machine_id, round(avg(p.temp),3) as processing_time from 
(select a1.machine_id, (a2.timestamp - a1.timestamp) as temp from activity a1 inner join activity a2 on a1.machine_id = a2.machine_id and a1.process_id = a2.process_id and a1.activity_type = "start" and a2.activity_type = "end") as p
group by p.machine_id