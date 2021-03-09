{
  /**
   * Creates a [CloudWatch target](https://grafana.com/docs/grafana/latest/features/datasources/cloudwatch/)
   *
   * @name cloudwatch.target
   *
   * @param region
   * @param namespace
   * @param metric
   * @param datasource (optional)
   * @param statistic (default: `'Average'`)
   * @param alias (optional)
   * @param highResolution (default: `false`)
   * @param period (default: `'1m'`)
   * @param dimensions (optional)
   * @param id (optional)
   * @param expression (optional)
   * @param hide (optional)
   * @param queryMode (default:`'Metrics'`)
   * @param logGroupNames (optional)

   * @return Panel target
   */

  target(
    region,
    namespace=null,
    metricName=null,
    datasource=null,
    statistic='Average',
    alias=null,
    highResolution=false,
    period='1m',
    dimensions={},
    id=null,
    expression=null,
    hide=null,
    queryMode='Metrics',
    logGroupNames=null
  ):: {
    region: region,
    [if namespace != null then 'namespace']: namespace,
    [if metricName != null then 'metricName']: metricName,
    [if datasource != null then 'datasource']: datasource,
    statistics: [statistic],
    [if alias != null then 'alias']: alias,
    highResolution: highResolution,
    period: period,
    dimensions: dimensions,
    [if id != null then 'id']: id,
    [if expression != null then 'expression']: expression,
    [if hide != null then 'hide']: hide,
    queryMode: queryMode,
    [if logGroupNames != null then 'logGroupNames']: logGroupNames,
  },
}
