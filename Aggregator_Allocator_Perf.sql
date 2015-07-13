-- OMS data workflow diagram >> http://prism/modules/wacko/wakka.php?wakka=HomePage/TeamPages/PMTech/NewSupportTools/TradingSystemsOverview

select * from staged_fix_inbound_execution_report  ---> Number of Messages that must go thru Aggregator

select * from new_fix_inbound_execution_report ---> Number of Messages that must go thru Allocator

select top 100 * from FIX_inbound_execution_report  order by entry_date desc ----> All Fix messages will end up in this table after the Allocation Process