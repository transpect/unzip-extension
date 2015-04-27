<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step 
    xmlns:p="http://www.w3.org/ns/xproc"
    xmlns:c="http://www.w3.org/ns/xproc-step" 
    xmlns:letex="http://www.le-tex.de/namespace"
    version="1.0">
    
    <p:input port="source">
        <p:empty/>
    </p:input>
    <p:output port="result"/>
    
    <p:option name="zip" required="true"/>
    <p:option name="path" required="true"/>
    
    <p:import href="../ltx-lib.xpl"/>
    
    <letex:unzip name="unzip">
        <p:with-option name="zip" select="$zip"/>
        <p:with-option name="dest-dir" select="$path"/>
        <p:with-option name="overwrite" select="'yes'"/>
    </letex:unzip>
    
</p:declare-step>