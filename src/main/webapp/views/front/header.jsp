<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="${baseUrl }/">
<title>Jfinal Portal</title>
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="static/css/bootstrap.min.css">
  <link rel="stylesheet" href="static/css/font-awesome.min.css">
  <link rel="stylesheet" href="static/css/ionicons.min.css">
  <link rel="stylesheet" href="static/css/JFP.css">
  <link rel="stylesheet" href="static/css/skins/_all-skins.css">
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <style type="text/css">
    .col-box{
      padding: 5px;
      overflow:hidden;
/*      overflow-y:auto;*/
    }
    table{
      table-layout: fixed;
    }
    td{
      white-space: nowrap;
      overflow: hidden;
      text-overflow: ellipsis;
    }
    .nav>li>a{
    	padding-bottom:8px;
    	padding-top:8px;
    }
  </style>
  
</head>
<body class="hold-transition skin-blue-light sidebar-mini">
<div class="wrapper">
<header class="main-header">
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <a href="#" class="logo">
      <span class="logo-lg"><b>Jfinal</b>Portal</span>
      </a>
    </nav>
  </header>
  <script src="static/js/jquery-2.2.3.min.js"></script>
  <script src="static/js/bootstrap.min.js"></script>
  <script src="static/js/app.js"></script>
  <script src="static/myjs/constants.js"></script>
  <script src="static/myjs/gen-panel.js"></script>
  <script src="static/myjs/index.js"></script>