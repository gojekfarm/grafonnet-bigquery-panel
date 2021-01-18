local grafana = import 'bigquery.libsonnet';
local bigquery = grafana.bigqueryPanel;
{
  basic: bigquery.target(
    rawSql="SELECT $__timeGroup(date_time_col, '1h'), sum(value) as value FROM yourtable GROUP BY time ORDER BY time",
  ),
  advanced: bigquery.target(
    rawSql="SELECT $__timeGroup(date_time_col, '1h'), sum(value) as value FROM yourtable GROUP BY time ORDER BY time",
    convertToUTC=true,
    orderByCol='metric',
    orderBySort='DSC',
    location='US',
  ),
}
