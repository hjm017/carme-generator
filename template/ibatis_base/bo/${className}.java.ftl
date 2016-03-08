<#include "/macro.include"/>
<#include "/custom.include">
<#assign className = table.className>   
package ${basePackage}.bo.${table.sqlName?split("_")[1]};

import java.io.Serializable;

/**
 * 
 * @ClassName: ${className}
 * @Description: 映射${table.sqlName}表
 * @author: carme-generator
 *
 */
public class ${className} implements Serializable {

    <#list table.columns as column>
    <#if column.pk>
    /**
	 * ${column.columnAlias}
	 */
	private Long   ${column.columnNameLower};
	<#elseif column.javaType == "Boolean">
	
	/**
	 * ${column.columnAlias}
	 */
	private Integer ${column.columnNameLower};
	<#elseif column.javaType == "java.lang.String">
	
	/**
	 * ${column.columnAlias}
	 */
	private String <@filter prefix_arr=prefix sql_value=column.sqlName value=column.columnNameLower uppercase=false/>;
	<#elseif column.javaType == "java.util.Date">
	
	/**
	 * ${column.columnAlias}
	 */
	private Date ${column.columnNameLower};
	<#elseif column.javaType == "java.lang.Long">
	
	/**
	 * ${column.columnAlias}
	 */
	private Long <@filter prefix_arr=prefix sql_value=column.sqlName value=column.columnNameLower uppercase=false/>;
	<#elseif column.javaType == "java.lang.Integer">
	
	/**
	 * ${column.columnAlias}
	 */
	private Integer  <@filter prefix_arr=prefix sql_value=column.sqlName value=column.columnNameLower uppercase=false/>;
	<#else>
	
	/**
	 * ${column.columnAlias}
	 */
	private ${column.javaType} ${column.columnNameLower};
	</#if>
	</#list>




}