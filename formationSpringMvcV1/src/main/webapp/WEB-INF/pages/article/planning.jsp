<%@page import="model.Role"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="client" value="<%=Role.Client%>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<link href='<c:url value="/resources/css/rotating-card.css" />'
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">

<title>Planning</title>
</head>





<style>
@
keyframes swing { 0% {
	transform: rotate(0deg);
}

10




%
{
transform




:




rotate


(




10deg




)


;
}
30




%
{
transform




:




rotate


(




0deg




)


;
}
40




%
{
transform




:




rotate


(




-10deg




)


;
}
50




%
{
transform




:




rotate


(




0deg




)


;
}
60




%
{
transform




:




rotate


(




5deg




)


;
}
70




%
{
transform




:




rotate


(




0deg




)


;
}
80




%
{
transform




:




rotate


(




-5deg




)


;
}
100




%
{
transform




:




rotate


(




0deg




)


;
}
}
@
keyframes sonar { 0% {
	transform: scale(0.9);
	opacity: 1;
}

100




%
{
transform




:




scale


(




2




)


;
opacity




:




0


;
}
}
body {
	font-size: 0.9rem;
}

.page-wrapper .sidebar-wrapper, .sidebar-wrapper .sidebar-brand>a,
	.sidebar-wrapper .sidebar-dropdown>a:after, .sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu li a:before,
	.sidebar-wrapper ul li a i, .page-wrapper .page-content,
	.sidebar-wrapper .sidebar-search input.search-menu, .sidebar-wrapper .sidebar-search .input-group-text,
	.sidebar-wrapper .sidebar-menu ul li a, #show-sidebar, #close-sidebar {
	-webkit-transition: all 0.3s ease;
	-moz-transition: all 0.3s ease;
	-ms-transition: all 0.3s ease;
	-o-transition: all 0.3s ease;
	transition: all 0.3s ease;
}

/*----------------page-wrapper----------------*/
.page-wrapper {
	height: 100vh;
}

.page-wrapper .theme {
	width: 40px;
	height: 40px;
	display: inline-block;
	border-radius: 4px;
	margin: 2px;
}

.page-wrapper .theme.chiller-theme {
	background: #1e2229;
}

/*----------------toggeled sidebar----------------*/
.page-wrapper.toggled .sidebar-wrapper {
	left: 0px;
}

@media screen and (min-width: 768px) {
	.page-wrapper.toggled .page-content {
		padding-left: 300px;
	}
}
/*----------------show sidebar button----------------*/
#show-sidebar {
	position: fixed;
	left: 0;
	top: 10px;
	border-radius: 0 4px 4px 0px;
	width: 35px;
	transition-delay: 0.3s;
}

.page-wrapper.toggled #show-sidebar {
	left: -40px;
}
/*----------------sidebar-wrapper----------------*/
.sidebar-wrapper {
	width: 260px;
	height: 100%;
	max-height: 100%;
	position: fixed;
	top: 0;
	left: -300px;
	z-index: 999;
}

.sidebar-wrapper ul {
	list-style-type: none;
	padding: 0;
	margin: 0;
}

.sidebar-wrapper a {
	text-decoration: none;
}

/*----------------sidebar-content----------------*/
.sidebar-content {
	max-height: calc(100% - 30px);
	height: calc(100% - 30px);
	overflow-y: auto;
	position: relative;
}

.sidebar-content.desktop {
	overflow-y: hidden;
}

/*--------------------sidebar-brand----------------------*/
.sidebar-wrapper .sidebar-brand {
	padding: 10px 20px;
	display: flex;
	align-items: center;
}

.sidebar-wrapper .sidebar-brand>a {
	text-transform: uppercase;
	font-weight: bold;
	flex-grow: 1;
}

.sidebar-wrapper .sidebar-brand #close-sidebar {
	cursor: pointer;
	font-size: 20px;
}
/*--------------------sidebar-header----------------------*/
.sidebar-wrapper .sidebar-header {
	padding: 20px;
	overflow: hidden;
}

.sidebar-wrapper .sidebar-header .user-pic {
	float: left;
	width: 60px;
	padding: 2px;
	border-radius: 12px;
	margin-right: 15px;
	overflow: hidden;
}

.sidebar-wrapper .sidebar-header .user-pic img {
	object-fit: cover;
	height: 100%;
	width: 100%;
}

.sidebar-wrapper .sidebar-header .user-info {
	float: left;
}

.sidebar-wrapper .sidebar-header .user-info>span {
	display: block;
}

.sidebar-wrapper .sidebar-header .user-info .user-role {
	font-size: 12px;
}

.sidebar-wrapper .sidebar-header .user-info .user-status {
	font-size: 11px;
	margin-top: 4px;
}

.sidebar-wrapper .sidebar-header .user-info .user-status i {
	font-size: 8px;
	margin-right: 4px;
	color: #5cb85c;
}

/*-----------------------sidebar-search------------------------*/
.sidebar-wrapper .sidebar-search>div {
	padding: 10px 20px;
}

/*----------------------sidebar-menu-------------------------*/
.sidebar-wrapper .sidebar-menu {
	padding-bottom: 10px;
}

.sidebar-wrapper .sidebar-menu .header-menu span {
	font-weight: bold;
	font-size: 14px;
	padding: 15px 20px 5px 20px;
	display: inline-block;
}

.sidebar-wrapper .sidebar-menu ul li a {
	display: inline-block;
	width: 100%;
	text-decoration: none;
	position: relative;
	padding: 8px 30px 8px 20px;
}

.sidebar-wrapper .sidebar-menu ul li a i {
	margin-right: 10px;
	font-size: 12px;
	width: 30px;
	height: 30px;
	line-height: 30px;
	text-align: center;
	border-radius: 4px;
}

.sidebar-wrapper .sidebar-menu ul li a:hover>i::before {
	display: inline-block;
	animation: swing ease-in-out 0.5s 1 alternate;
}

.sidebar-wrapper .sidebar-menu .sidebar-dropdown>a:after {
	font-family: "Font Awesome 5 Free";
	font-weight: 900;
	content: "\f105";
	font-style: normal;
	display: inline-block;
	font-style: normal;
	font-variant: normal;
	text-rendering: auto;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	text-align: center;
	background: 0 0;
	position: absolute;
	right: 15px;
	top: 14px;
}

.sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu ul {
	padding: 5px 0;
}

.sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu li {
	padding-left: 25px;
	font-size: 13px;
}

.sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu li a:before
	{
	content: "\f111";
	font-family: "Font Awesome 5 Free";
	font-weight: 400;
	font-style: normal;
	display: inline-block;
	text-align: center;
	text-decoration: none;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	margin-right: 10px;
	font-size: 8px;
}

.sidebar-wrapper .sidebar-menu ul li a span.label, .sidebar-wrapper .sidebar-menu ul li a span.badge
	{
	float: right;
	margin-top: 8px;
	margin-left: 5px;
}

.sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu li a .badge,
	.sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu li a .label
	{
	float: right;
	margin-top: 0px;
}

.sidebar-wrapper .sidebar-menu .sidebar-submenu {
	display: none;
}

.sidebar-wrapper .sidebar-menu .sidebar-dropdown.active>a:after {
	transform: rotate(90deg);
	right: 17px;
}

/*--------------------------side-footer------------------------------*/
.sidebar-footer {
	position: absolute;
	width: 100%;
	bottom: 0;
	display: flex;
}

.sidebar-footer>a {
	flex-grow: 1;
	text-align: center;
	height: 30px;
	line-height: 30px;
	position: relative;
}

.sidebar-footer>a .notification {
	position: absolute;
	top: 0;
}

.badge-sonar {
	display: inline-block;
	background: #980303;
	border-radius: 50%;
	height: 8px;
	width: 8px;
	position: absolute;
	top: 0;
}

.badge-sonar:after {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	border: 2px solid #980303;
	opacity: 0;
	border-radius: 50%;
	width: 100%;
	height: 100%;
	animation: sonar 1.5s infinite;
}

/*--------------------------page-content-----------------------------*/
.page-wrapper .page-content {
	display: inline-block;
	width: 100%;
	padding-left: 0px;
	padding-top: 20px;
}

.page-wrapper .page-content>div {
	padding: 20px 40px;
}

.page-wrapper .page-content {
	overflow-x: hidden;
}

/*------scroll bar---------------------*/
::-webkit-scrollbar {
	width: 5px;
	height: 7px;
}

::-webkit-scrollbar-button {
	width: 0px;
	height: 0px;
}

::-webkit-scrollbar-thumb {
	background: #525965;
	border: 0px none #ffffff;
	border-radius: 0px;
}

::-webkit-scrollbar-thumb:hover {
	background: #525965;
}

::-webkit-scrollbar-thumb:active {
	background: #525965;
}

::-webkit-scrollbar-track {
	background: transparent;
	border: 0px none #ffffff;
	border-radius: 50px;
}

::-webkit-scrollbar-track:hover {
	background: transparent;
}

::-webkit-scrollbar-track:active {
	background: transparent;
}

::-webkit-scrollbar-corner {
	background: transparent;
}

/*-----------------------------chiller-theme-------------------------------------------------*/
.chiller-theme .sidebar-wrapper {
	background: #31353d;
}

.chiller-theme .sidebar-wrapper .sidebar-header, .chiller-theme .sidebar-wrapper .sidebar-search,
	.chiller-theme .sidebar-wrapper .sidebar-menu {
	border-top: 1px solid #3a3f48;
}

.chiller-theme .sidebar-wrapper .sidebar-search input.search-menu,
	.chiller-theme .sidebar-wrapper .sidebar-search .input-group-text {
	border-color: transparent;
	box-shadow: none;
}

.chiller-theme .sidebar-wrapper .sidebar-header .user-info .user-role,
	.chiller-theme .sidebar-wrapper .sidebar-header .user-info .user-status,
	.chiller-theme .sidebar-wrapper .sidebar-search input.search-menu,
	.chiller-theme .sidebar-wrapper .sidebar-search .input-group-text,
	.chiller-theme .sidebar-wrapper .sidebar-brand>a, .chiller-theme .sidebar-wrapper .sidebar-menu ul li a,
	.chiller-theme .sidebar-footer>a {
	color: #818896;
}

.chiller-theme .sidebar-wrapper .sidebar-menu ul li:hover>a,
	.chiller-theme .sidebar-wrapper .sidebar-menu .sidebar-dropdown.active>a,
	.chiller-theme .sidebar-wrapper .sidebar-header .user-info,
	.chiller-theme .sidebar-wrapper .sidebar-brand>a:hover, .chiller-theme .sidebar-footer>a:hover i
	{
	color: #b8bfce;
}

.page-wrapper.chiller-theme.toggled #close-sidebar {
	color: #bdbdbd;
}

.page-wrapper.chiller-theme.toggled #close-sidebar:hover {
	color: #ffffff;
}

.chiller-theme .sidebar-wrapper ul li:hover a i, .chiller-theme
  .sidebar-wrapper
  .sidebar-dropdown
  .sidebar-submenu
  li
  a:hover:before, .chiller-theme .sidebar-wrapper .sidebar-search input.search-menu:focus+span,
	.chiller-theme .sidebar-wrapper .sidebar-menu .sidebar-dropdown.active a i
	{
	color: #16c7ff;
	text-shadow: 0px 0px 10px rgba(22, 199, 255, 0.5);
}

.chiller-theme .sidebar-wrapper .sidebar-menu ul li a i, .chiller-theme .sidebar-wrapper .sidebar-menu .sidebar-dropdown div,
	.chiller-theme .sidebar-wrapper .sidebar-search input.search-menu,
	.chiller-theme .sidebar-wrapper .sidebar-search .input-group-text {
	background: #3a3f48;
}

.chiller-theme .sidebar-wrapper .sidebar-menu .header-menu span {
	color: #6c7b88;
}

.chiller-theme .sidebar-footer {
	background: #3a3f48;
	box-shadow: 0px -1px 5px #282c33;
	border-top: 1px solid #464a52;
}

.chiller-theme .sidebar-footer>a:first-child {
	border-left: none;
}

.chiller-theme .sidebar-footer>a:last-child {
	border-right: none;
}

@charset "UTF-8";
@import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600);
.cal-day, .cal-title > .cal-heading, .cal-button > *, .cal-scene {
  transition: all 0.6s cubic-bezier(0.645, 0.045, 0.355, 1);
}

[id=index]:target ~ .cal-device .cal-scene.-calendar > .cal-month, [id=index]:target ~ .cal-device .cal-scene.-calendar > .cal-header {
  -webkit-animation: fade-in 0.6s 0.3s cubic-bezier(0.645, 0.045, 0.355, 1) both;
          animation: fade-in 0.6s 0.3s cubic-bezier(0.645, 0.045, 0.355, 1) both;
}

@-webkit-keyframes fade-in {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}

@keyframes fade-in {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}
[id=oct-week-3]:target ~ .cal-device [href="#oct-week-3"] {
  cursor: default;
}
[id=oct-week-3]:target ~ .cal-device .cal-app {
  background: linear-gradient(#FBEC6B, #F4BC6B, #EB8B6B, #E0536B, #D6306D, #A32C68, #722A65, #422662, #12255D, #275B75, #3C918B, #52C6A2, #66F8B6);
}

[id=oct-week-4]:target ~ .cal-device .cal-month {
  transform: translateY(-7.7142857143vh);
}
[id=oct-week-4]:target ~ .cal-device .cal-month.-october > .cal-header {
  transform: translateY(7.7142857143vh) translateX(30.8571428571vh);
}
[id=oct-week-4]:target ~ .cal-device .cal-scene.-calendar:before {
  box-shadow: 0vh 7.7142857143vh #f3b56b, 7.7142857143vh 7.7142857143vh #f1ae6b, 15.4285714286vh 7.7142857143vh #f0a76b, 23.1428571429vh 7.7142857143vh #efa06b, 30.8571428571vh 7.7142857143vh #ee996b, 38.5714285714vh 7.7142857143vh #ec926b, 46.2857142857vh 7.7142857143vh #eb8b6b, 0vh 15.4285714286vh #e9836b, 7.7142857143vh 15.4285714286vh #e87b6b, 15.4285714286vh 15.4285714286vh #e6736b, 23.1428571429vh 15.4285714286vh #e56b6b, 30.8571428571vh 15.4285714286vh #e3636b, 38.5714285714vh 15.4285714286vh #e25b6b, 46.2857142857vh 15.4285714286vh #e0536b, 0vh 23.1428571429vh #df4e6b, 7.7142857143vh 23.1428571429vh #dd496c, 15.4285714286vh 23.1428571429vh #dc446c, 23.1428571429vh 23.1428571429vh #da3f6c, 30.8571428571vh 23.1428571429vh #d93a6c, 38.5714285714vh 23.1428571429vh #d7356d, 46.2857142857vh 23.1428571429vh #d6306d, 0vh 30.8571428571vh #cf2f6c, 7.7142857143vh 30.8571428571vh #c72f6c, 15.4285714286vh 30.8571428571vh #c02e6b, 23.1428571429vh 30.8571428571vh #b92e6a, 30.8571428571vh 30.8571428571vh #b22d69, 38.5714285714vh 30.8571428571vh #aa2d69, 46.2857142857vh 30.8571428571vh #a32c68, 0vh 38.5714285714vh #9c2c68, 7.7142857143vh 38.5714285714vh #952b67, 15.4285714286vh 38.5714285714vh #8e2b67, 23.1428571429vh 38.5714285714vh #872b66, 30.8571428571vh 38.5714285714vh #802b66, 38.5714285714vh 38.5714285714vh #792a65, 46.2857142857vh 38.5714285714vh #722a65, 0vh 46.2857142857vh #6b2965, 7.7142857143vh 46.2857142857vh #642964, 15.4285714286vh 46.2857142857vh #5d2864, 23.1428571429vh 46.2857142857vh #572863, 30.8571428571vh 46.2857142857vh #502763, 38.5714285714vh 46.2857142857vh #492762, 46.2857142857vh 46.2857142857vh #422662, 0vh 54vh #3b2661, 7.7142857143vh 54vh #342661, 15.4285714286vh 54vh #2d2660, 23.1428571429vh 54vh #27255f, 30.8571428571vh 54vh #20255e, 38.5714285714vh 54vh #19255e, 46.2857142857vh 54vh #12255d, 0vh 61.7142857143vh #152d60, 7.7142857143vh 61.7142857143vh #183464, 15.4285714286vh 61.7142857143vh #1b3c67, 23.1428571429vh 61.7142857143vh #1e446b, 30.8571428571vh 61.7142857143vh #214c6e, 38.5714285714vh 61.7142857143vh #245372, 46.2857142857vh 61.7142857143vh #275b75, 0vh 69.4285714286vh #2a6378, 7.7142857143vh 69.4285714286vh #2d6a7b, 15.4285714286vh 69.4285714286vh #30727e, 23.1428571429vh 69.4285714286vh #337a82, 30.8571428571vh 69.4285714286vh #368285, 38.5714285714vh 69.4285714286vh #398988, 46.2857142857vh 69.4285714286vh #3c918b, 0vh 77.1428571429vh #3f998e, 7.7142857143vh 77.1428571429vh #42a092, 15.4285714286vh 77.1428571429vh #45a895, 23.1428571429vh 77.1428571429vh #49af98, 30.8571428571vh 77.1428571429vh #4cb79b, 38.5714285714vh 77.1428571429vh #4fbe9f, 46.2857142857vh 77.1428571429vh #52c6a2, 0vh 84.8571428571vh #55cda5, 7.7142857143vh 84.8571428571vh #58d4a8, 15.4285714286vh 84.8571428571vh #5bdbab, 23.1428571429vh 84.8571428571vh #5de3ad, 30.8571428571vh 84.8571428571vh #60eab0, 38.5714285714vh 84.8571428571vh #63f1b3, 46.2857142857vh 84.8571428571vh #66f8b6, 0vh 92.5714285714vh #6df8b9, 7.7142857143vh 92.5714285714vh #74f9bd, 15.4285714286vh 92.5714285714vh #7bf9c0, 23.1428571429vh 92.5714285714vh #82f9c3, 30.8571428571vh 92.5714285714vh #89f9c6, 38.5714285714vh 92.5714285714vh #90faca, 46.2857142857vh 92.5714285714vh #97facd;
}
[id=oct-week-4]:target ~ .cal-device .cal-app {
  background: linear-gradient(#F4BC6B, #EB8B6B, #E0536B, #D6306D, #A32C68, #722A65, #422662, #12255D, #275B75, #3C918B, #52C6A2, #66F8B6);
}
[id=oct-week-4]:target ~ .cal-device [href="#oct-week-4"] {
  z-index: -1;
}

[id=nov-week-1]:target ~ .cal-device .cal-month {
  transform: translateY(-15.4285714286vh);
}
[id=nov-week-1]:target ~ .cal-device .cal-month.-october > .cal-header {
  transform: translateY(7.7142857143vh) translateX(30.8571428571vh);
  opacity: 0;
}
[id=nov-week-1]:target ~ .cal-device .cal-app {
  background: linear-gradient(#EB8B6B, #E0536B, #D6306D, #A32C68, #722A65, #422662, #12255D, #275B75, #3C918B, #52C6A2, #66F8B6);
}
[id=nov-week-1]:target ~ .cal-device .cal-scene.-calendar:before {
  box-shadow: 0vh 7.7142857143vh #e9836b, 7.7142857143vh 7.7142857143vh #e87b6b, 15.4285714286vh 7.7142857143vh #e6736b, 23.1428571429vh 7.7142857143vh #e56b6b, 30.8571428571vh 7.7142857143vh #e3636b, 38.5714285714vh 7.7142857143vh #e25b6b, 46.2857142857vh 7.7142857143vh #e0536b, 0vh 15.4285714286vh #df4e6b, 7.7142857143vh 15.4285714286vh #dd496c, 15.4285714286vh 15.4285714286vh #dc446c, 23.1428571429vh 15.4285714286vh #da3f6c, 30.8571428571vh 15.4285714286vh #d93a6c, 38.5714285714vh 15.4285714286vh #d7356d, 46.2857142857vh 15.4285714286vh #d6306d, 0vh 23.1428571429vh #cf2f6c, 7.7142857143vh 23.1428571429vh #c72f6c, 15.4285714286vh 23.1428571429vh #c02e6b, 23.1428571429vh 23.1428571429vh #b92e6a, 30.8571428571vh 23.1428571429vh #b22d69, 38.5714285714vh 23.1428571429vh #aa2d69, 46.2857142857vh 23.1428571429vh #a32c68, 0vh 30.8571428571vh #9c2c68, 7.7142857143vh 30.8571428571vh #952b67, 15.4285714286vh 30.8571428571vh #8e2b67, 23.1428571429vh 30.8571428571vh #872b66, 30.8571428571vh 30.8571428571vh #802b66, 38.5714285714vh 30.8571428571vh #792a65, 46.2857142857vh 30.8571428571vh #722a65, 0vh 38.5714285714vh #6b2965, 7.7142857143vh 38.5714285714vh #642964, 15.4285714286vh 38.5714285714vh #5d2864, 23.1428571429vh 38.5714285714vh #572863, 30.8571428571vh 38.5714285714vh #502763, 38.5714285714vh 38.5714285714vh #492762, 46.2857142857vh 38.5714285714vh #422662, 0vh 46.2857142857vh #3b2661, 7.7142857143vh 46.2857142857vh #342661, 15.4285714286vh 46.2857142857vh #2d2660, 23.1428571429vh 46.2857142857vh #27255f, 30.8571428571vh 46.2857142857vh #20255e, 38.5714285714vh 46.2857142857vh #19255e, 46.2857142857vh 46.2857142857vh #12255d, 0vh 54vh #152d60, 7.7142857143vh 54vh #183464, 15.4285714286vh 54vh #1b3c67, 23.1428571429vh 54vh #1e446b, 30.8571428571vh 54vh #214c6e, 38.5714285714vh 54vh #245372, 46.2857142857vh 54vh #275b75, 0vh 61.7142857143vh #2a6378, 7.7142857143vh 61.7142857143vh #2d6a7b, 15.4285714286vh 61.7142857143vh #30727e, 23.1428571429vh 61.7142857143vh #337a82, 30.8571428571vh 61.7142857143vh #368285, 38.5714285714vh 61.7142857143vh #398988, 46.2857142857vh 61.7142857143vh #3c918b, 0vh 69.4285714286vh #3f998e, 7.7142857143vh 69.4285714286vh #42a092, 15.4285714286vh 69.4285714286vh #45a895, 23.1428571429vh 69.4285714286vh #49af98, 30.8571428571vh 69.4285714286vh #4cb79b, 38.5714285714vh 69.4285714286vh #4fbe9f, 46.2857142857vh 69.4285714286vh #52c6a2, 0vh 77.1428571429vh #55cda5, 7.7142857143vh 77.1428571429vh #58d4a8, 15.4285714286vh 77.1428571429vh #5bdbab, 23.1428571429vh 77.1428571429vh #5de3ad, 30.8571428571vh 77.1428571429vh #60eab0, 38.5714285714vh 77.1428571429vh #63f1b3, 46.2857142857vh 77.1428571429vh #66f8b6, 0vh 84.8571428571vh #6df8b9, 7.7142857143vh 84.8571428571vh #74f9bd, 15.4285714286vh 84.8571428571vh #7bf9c0, 23.1428571429vh 84.8571428571vh #82f9c3, 30.8571428571vh 84.8571428571vh #89f9c6, 38.5714285714vh 84.8571428571vh #90faca, 46.2857142857vh 84.8571428571vh #97facd;
}

[id=nov-week-2]:target ~ .cal-device .cal-month {
  transform: translateY(-23.1428571429vh);
}
[id=nov-week-2]:target ~ .cal-device .cal-month.-october > .cal-header {
  opacity: 0;
}
[id=nov-week-2]:target ~ .cal-device .cal-scene.-calendar:before {
  box-shadow: 0vh 7.7142857143vh #df4e6b, 7.7142857143vh 7.7142857143vh #dd496c, 15.4285714286vh 7.7142857143vh #dc446c, 23.1428571429vh 7.7142857143vh #da3f6c, 30.8571428571vh 7.7142857143vh #d93a6c, 38.5714285714vh 7.7142857143vh #d7356d, 46.2857142857vh 7.7142857143vh #d6306d, 0vh 15.4285714286vh #cf2f6c, 7.7142857143vh 15.4285714286vh #c72f6c, 15.4285714286vh 15.4285714286vh #c02e6b, 23.1428571429vh 15.4285714286vh #b92e6a, 30.8571428571vh 15.4285714286vh #b22d69, 38.5714285714vh 15.4285714286vh #aa2d69, 46.2857142857vh 15.4285714286vh #a32c68, 0vh 23.1428571429vh #9c2c68, 7.7142857143vh 23.1428571429vh #952b67, 15.4285714286vh 23.1428571429vh #8e2b67, 23.1428571429vh 23.1428571429vh #872b66, 30.8571428571vh 23.1428571429vh #802b66, 38.5714285714vh 23.1428571429vh #792a65, 46.2857142857vh 23.1428571429vh #722a65, 0vh 30.8571428571vh #6b2965, 7.7142857143vh 30.8571428571vh #642964, 15.4285714286vh 30.8571428571vh #5d2864, 23.1428571429vh 30.8571428571vh #572863, 30.8571428571vh 30.8571428571vh #502763, 38.5714285714vh 30.8571428571vh #492762, 46.2857142857vh 30.8571428571vh #422662, 0vh 38.5714285714vh #3b2661, 7.7142857143vh 38.5714285714vh #342661, 15.4285714286vh 38.5714285714vh #2d2660, 23.1428571429vh 38.5714285714vh #27255f, 30.8571428571vh 38.5714285714vh #20255e, 38.5714285714vh 38.5714285714vh #19255e, 46.2857142857vh 38.5714285714vh #12255d, 0vh 46.2857142857vh #152d60, 7.7142857143vh 46.2857142857vh #183464, 15.4285714286vh 46.2857142857vh #1b3c67, 23.1428571429vh 46.2857142857vh #1e446b, 30.8571428571vh 46.2857142857vh #214c6e, 38.5714285714vh 46.2857142857vh #245372, 46.2857142857vh 46.2857142857vh #275b75, 0vh 54vh #2a6378, 7.7142857143vh 54vh #2d6a7b, 15.4285714286vh 54vh #30727e, 23.1428571429vh 54vh #337a82, 30.8571428571vh 54vh #368285, 38.5714285714vh 54vh #398988, 46.2857142857vh 54vh #3c918b, 0vh 61.7142857143vh #3f998e, 7.7142857143vh 61.7142857143vh #42a092, 15.4285714286vh 61.7142857143vh #45a895, 23.1428571429vh 61.7142857143vh #49af98, 30.8571428571vh 61.7142857143vh #4cb79b, 38.5714285714vh 61.7142857143vh #4fbe9f, 46.2857142857vh 61.7142857143vh #52c6a2, 0vh 69.4285714286vh #55cda5, 7.7142857143vh 69.4285714286vh #58d4a8, 15.4285714286vh 69.4285714286vh #5bdbab, 23.1428571429vh 69.4285714286vh #5de3ad, 30.8571428571vh 69.4285714286vh #60eab0, 38.5714285714vh 69.4285714286vh #63f1b3, 46.2857142857vh 69.4285714286vh #66f8b6, 0vh 77.1428571429vh #6df8b9, 7.7142857143vh 77.1428571429vh #74f9bd, 15.4285714286vh 77.1428571429vh #7bf9c0, 23.1428571429vh 77.1428571429vh #82f9c3, 30.8571428571vh 77.1428571429vh #89f9c6, 38.5714285714vh 77.1428571429vh #90faca, 46.2857142857vh 77.1428571429vh #97facd;
}
[id=nov-week-2]:target ~ .cal-device .cal-app {
  background: linear-gradient(#E0536B, #D6306D, #A32C68, #722A65, #422662, #12255D, #275B75, #3C918B, #52C6A2, #66F8B6);
}

[id=schedule]:target ~ .cal-device .cal-bar .-schedule {
  opacity: 1;
}
[id=schedule]:target ~ .cal-device .cal-bar .-calendar {
  opacity: 0;
}
[id=schedule]:target ~ .cal-device .cal-scene.-schedule {
  opacity: 1;
  z-index: 2;
}
[id=schedule]:target ~ .cal-device .cal-task > *, [id=schedule]:target ~ .cal-device .cal-time > * {
  transform: translateX(0);
}
[id=schedule]:target ~ .cal-device .cal-item:nth-child(1) .cal-task > *, [id=schedule]:target ~ .cal-device .cal-item:nth-child(1) .cal-time > * {
  transition-delay: 0s;
}
[id=schedule]:target ~ .cal-device .cal-item:nth-child(2) .cal-task > *, [id=schedule]:target ~ .cal-device .cal-item:nth-child(2) .cal-time > * {
  transition-delay: 0.06s;
}
[id=schedule]:target ~ .cal-device .cal-item:nth-child(3) .cal-task > *, [id=schedule]:target ~ .cal-device .cal-item:nth-child(3) .cal-time > * {
  transition-delay: 0.12s;
}
[id=schedule]:target ~ .cal-device .cal-item:nth-child(4) .cal-task > *, [id=schedule]:target ~ .cal-device .cal-item:nth-child(4) .cal-time > * {
  transition-delay: 0.18s;
}
[id=schedule]:target ~ .cal-device .cal-item:nth-child(5) .cal-task > *, [id=schedule]:target ~ .cal-device .cal-item:nth-child(5) .cal-time > * {
  transition-delay: 0.24s;
}
[id=schedule]:target ~ .cal-device .cal-item:nth-child(6) .cal-task > *, [id=schedule]:target ~ .cal-device .cal-item:nth-child(6) .cal-time > * {
  transition-delay: 0.3s;
}
[id=schedule]:target ~ .cal-device .cal-item:nth-child(7) .cal-task > *, [id=schedule]:target ~ .cal-device .cal-item:nth-child(7) .cal-time > * {
  transition-delay: 0.36s;
}
[id=schedule]:target ~ .cal-device .cal-scene.-calendar, [id=schedule]:target ~ .cal-device .cal-scene.-calendar * {
  transition-delay: 0.6s;
}

.cal-device {
  width: 54vh;
  height: 96vh;
  background: white;
}
.cal-device > .cal-header {
  height: 11.5714285714vh;
  background: #1c3e69;
}
.cal-app {
  height: 84.4285714286vh;
  width: 100%;
  background: linear-gradient(#FBEC6B, #F4BC6B, #EB8B6B, #E0536B, #D6306D, #A32C68, #722A65, #422662, #12255D, #275B75, #3C918B, #52C6A2, #66F8B6);
}

.cal-week {
  height: 7.7142857143vh;
  width: 100%;
  display: flex;
  flex-direction: row;
}

.cal-weekday {
  color: white;
  width: 7.7142857143vh;
  display: flex;
  justify-content: center;
  align-items: center;
  z-index: 1;
  font-weight: 600;
  font-size: 2.5714285714vh;
}

.fa {
  font-size: 2.5714285714vh;
}

.cal-scene {
  width: 100%;
  height: 100%;
  position: absolute;
  top: 0;
  left: 0;
  overflow: hidden;
}
.cal-scene.-calendar:before {
  content: "";
  display: block;
  height: 7.7142857143vh;
  width: 7.7142857143vh;
  position: absolute;
  top: -7.7142857143vh;
  left: 0;
  box-shadow: 0vh 7.7142857143vh #fae56b, 7.7142857143vh 7.7142857143vh #f9de6b, 15.4285714286vh 7.7142857143vh #f8d76b, 23.1428571429vh 7.7142857143vh #f7d16b, 30.8571428571vh 7.7142857143vh #f6ca6b, 38.5714285714vh 7.7142857143vh #f5c36b, 46.2857142857vh 7.7142857143vh #f4bc6b, 0vh 15.4285714286vh #f3b56b, 7.7142857143vh 15.4285714286vh #f1ae6b, 15.4285714286vh 15.4285714286vh #f0a76b, 23.1428571429vh 15.4285714286vh #efa06b, 30.8571428571vh 15.4285714286vh #ee996b, 38.5714285714vh 15.4285714286vh #ec926b, 46.2857142857vh 15.4285714286vh #eb8b6b, 0vh 23.1428571429vh #e9836b, 7.7142857143vh 23.1428571429vh #e87b6b, 15.4285714286vh 23.1428571429vh #e6736b, 23.1428571429vh 23.1428571429vh #e56b6b, 30.8571428571vh 23.1428571429vh #e3636b, 38.5714285714vh 23.1428571429vh #e25b6b, 46.2857142857vh 23.1428571429vh #e0536b, 0vh 30.8571428571vh #df4e6b, 7.7142857143vh 30.8571428571vh #dd496c, 15.4285714286vh 30.8571428571vh #dc446c, 23.1428571429vh 30.8571428571vh #da3f6c, 30.8571428571vh 30.8571428571vh #d93a6c, 38.5714285714vh 30.8571428571vh #d7356d, 46.2857142857vh 30.8571428571vh #d6306d, 0vh 38.5714285714vh #cf2f6c, 7.7142857143vh 38.5714285714vh #c72f6c, 15.4285714286vh 38.5714285714vh #c02e6b, 23.1428571429vh 38.5714285714vh #b92e6a, 30.8571428571vh 38.5714285714vh #b22d69, 38.5714285714vh 38.5714285714vh #aa2d69, 46.2857142857vh 38.5714285714vh #a32c68, 0vh 46.2857142857vh #9c2c68, 7.7142857143vh 46.2857142857vh #952b67, 15.4285714286vh 46.2857142857vh #8e2b67, 23.1428571429vh 46.2857142857vh #872b66, 30.8571428571vh 46.2857142857vh #802b66, 38.5714285714vh 46.2857142857vh #792a65, 46.2857142857vh 46.2857142857vh #722a65, 0vh 54vh #6b2965, 7.7142857143vh 54vh #642964, 15.4285714286vh 54vh #5d2864, 23.1428571429vh 54vh #572863, 30.8571428571vh 54vh #502763, 38.5714285714vh 54vh #492762, 46.2857142857vh 54vh #422662, 0vh 61.7142857143vh #3b2661, 7.7142857143vh 61.7142857143vh #342661, 15.4285714286vh 61.7142857143vh #2d2660, 23.1428571429vh 61.7142857143vh #27255f, 30.8571428571vh 61.7142857143vh #20255e, 38.5714285714vh 61.7142857143vh #19255e, 46.2857142857vh 61.7142857143vh #12255d, 0vh 69.4285714286vh #152d60, 7.7142857143vh 69.4285714286vh #183464, 15.4285714286vh 69.4285714286vh #1b3c67, 23.1428571429vh 69.4285714286vh #1e446b, 30.8571428571vh 69.4285714286vh #214c6e, 38.5714285714vh 69.4285714286vh #245372, 46.2857142857vh 69.4285714286vh #275b75, 0vh 77.1428571429vh #2a6378, 7.7142857143vh 77.1428571429vh #2d6a7b, 15.4285714286vh 77.1428571429vh #30727e, 23.1428571429vh 77.1428571429vh #337a82, 30.8571428571vh 77.1428571429vh #368285, 38.5714285714vh 77.1428571429vh #398988, 46.2857142857vh 77.1428571429vh #3c918b, 0vh 84.8571428571vh #3f998e, 7.7142857143vh 84.8571428571vh #42a092, 15.4285714286vh 84.8571428571vh #45a895, 23.1428571429vh 84.8571428571vh #49af98, 30.8571428571vh 84.8571428571vh #4cb79b, 38.5714285714vh 84.8571428571vh #4fbe9f, 46.2857142857vh 84.8571428571vh #52c6a2, 0vh 92.5714285714vh #55cda5, 7.7142857143vh 92.5714285714vh #58d4a8, 15.4285714286vh 92.5714285714vh #5bdbab, 23.1428571429vh 92.5714285714vh #5de3ad, 30.8571428571vh 92.5714285714vh #60eab0, 38.5714285714vh 92.5714285714vh #63f1b3, 46.2857142857vh 92.5714285714vh #66f8b6, 0vh 100.2857142857vh #6df8b9, 7.7142857143vh 100.2857142857vh #74f9bd, 15.4285714286vh 100.2857142857vh #7bf9c0, 23.1428571429vh 100.2857142857vh #82f9c3, 30.8571428571vh 100.2857142857vh #89f9c6, 38.5714285714vh 100.2857142857vh #90faca, 46.2857142857vh 100.2857142857vh #97facd;
  transition: box-shadow 0.6s cubic-bezier(0.645, 0.045, 0.355, 1);
}
.cal-scene.-schedule {
  z-index: -1;
  opacity: 0;
}

.cal-month:first-child > .cal-header, [id=nov-week-1]:target ~ .cal-device .cal-month.-november > .cal-header, [id=nov-week-2]:target ~ .cal-device .cal-month.-november > .cal-header, .cal-device .cal-month.-october > .cal-header, .cal-device .cal-month.-december > .cal-header, .cal-device .cal-month.-january > .cal-header {
  transform: translateX(30.8571428571vh);
}
.cal-month:first-child > .cal-header > .cal-link, [id=nov-week-1]:target ~ .cal-device .cal-month.-november > .cal-header > .cal-link, [id=nov-week-2]:target ~ .cal-device .cal-month.-november > .cal-header > .cal-link, .cal-device .cal-month.-october > .cal-header > .cal-link, .cal-device .cal-month.-december > .cal-header > .cal-link, .cal-device .cal-month.-january > .cal-header > .cal-link {
  background-color: rgba(255, 255, 255, 0.4);
}
.cal-month:first-child > .cal-header > .cal-link > span, [id=nov-week-1]:target ~ .cal-device .cal-month.-november > .cal-header > .cal-link > span, [id=nov-week-2]:target ~ .cal-device .cal-month.-november > .cal-header > .cal-link > span, .cal-device .cal-month.-october > .cal-header > .cal-link > span, .cal-device .cal-month.-december > .cal-header > .cal-link > span, .cal-device .cal-month.-january > .cal-header > .cal-link > span {
  transform: translateX(calc(-50% - 1.9285714286vh)) translateY(-50%);
  color: white;
}
.cal-month:first-child > .cal-header > .cal-arrow, [id=nov-week-1]:target ~ .cal-device .cal-month.-november > .cal-header > .cal-arrow, [id=nov-week-2]:target ~ .cal-device .cal-month.-november > .cal-header > .cal-arrow, .cal-device .cal-month.-october > .cal-header > .cal-arrow, .cal-device .cal-month.-december > .cal-header > .cal-arrow, .cal-device .cal-month.-january > .cal-header > .cal-arrow {
  opacity: 1;
  pointer-events: inherit;
}
.cal-month:first-child .cal-day, [id=nov-week-1]:target ~ .cal-device .cal-month.-november .cal-day, [id=nov-week-2]:target ~ .cal-device .cal-month.-november .cal-day, .cal-device .cal-month.-october .cal-day, .cal-device .cal-month.-december .cal-day, .cal-device .cal-month.-january .cal-day {
  color: rgba(255, 255, 255, 0.4);
}
.-october.cal-month:first-child .cal-arrow, [id=nov-week-1]:target ~ .cal-device .-october.cal-month.-november .cal-arrow, [id=nov-week-2]:target ~ .cal-device .-october.cal-month.-november .cal-arrow, .cal-device .-october.cal-month .cal-arrow {
  color: #EB8B6B;
}
.-november.cal-month:first-child .cal-arrow, [id=nov-week-1]:target ~ .cal-device .-november.cal-month .cal-arrow, [id=nov-week-2]:target ~ .cal-device .-november.cal-month .cal-arrow, .cal-device .-november.cal-month.-october .cal-arrow, .cal-device .-november.cal-month.-december .cal-arrow, .cal-device .-november.cal-month.-january .cal-arrow {
  color: #D6306D;
}
.-december.cal-month:first-child .cal-arrow, [id=nov-week-1]:target ~ .cal-device .-december.cal-month.-november .cal-arrow, [id=nov-week-2]:target ~ .cal-device .-december.cal-month.-november .cal-arrow, .cal-device .-december.cal-month .cal-arrow {
  color: #102152;
}
.-january.cal-month:first-child .cal-arrow, [id=nov-week-1]:target ~ .cal-device .-january.cal-month.-november .cal-arrow, [id=nov-week-2]:target ~ .cal-device .-january.cal-month.-november .cal-arrow, .cal-device .-january.cal-month .cal-arrow {
  color: #97FACD;
}

[id=nov-week-1]:target ~ .cal-device .cal-month.-december > .cal-header, [id=nov-week-2]:target ~ .cal-device .cal-month.-december > .cal-header, .cal-device .cal-month.-november > .cal-header {
  transform: translateX(15.4285714286vh);
}
[id=nov-week-1]:target ~ .cal-device .cal-month.-december .cal-link, [id=nov-week-2]:target ~ .cal-device .cal-month.-december .cal-link, .cal-device .cal-month.-november .cal-link {
  background-color: white;
  color: gray;
}
[id=nov-week-1]:target ~ .cal-device .cal-month.-december .cal-link > span, [id=nov-week-2]:target ~ .cal-device .cal-month.-december .cal-link > span, .cal-device .cal-month.-november .cal-link > span {
  transform: translateX(-50%) translateY(-50%);
}
[id=nov-week-1]:target ~ .cal-device .cal-month.-december .cal-arrow, [id=nov-week-2]:target ~ .cal-device .cal-month.-december .cal-arrow, .cal-device .cal-month.-november .cal-arrow {
  opacity: 0;
  pointer-events: none;
}
[id=nov-week-1]:target ~ .cal-device .cal-month.-december .cal-day, [id=nov-week-2]:target ~ .cal-device .cal-month.-december .cal-day, .cal-device .cal-month.-november .cal-day {
  color: white;
}
[id=nov-week-1]:target ~ .cal-device .-november.cal-month.-december .cal-link span, [id=nov-week-2]:target ~ .cal-device .-november.cal-month.-december .cal-link span, .cal-device .-november.cal-month .cal-link span {
  color: #DA3F6C;
}
[id=nov-week-1]:target ~ .cal-device .-december.cal-month .cal-link span, [id=nov-week-2]:target ~ .cal-device .-december.cal-month .cal-link span, .cal-device .-december.cal-month.-november .cal-link span {
  color: #26255F;
}

.cal-month {
  display: block;
  counter-reset: month;
  transition: transform 0.6s cubic-bezier(0.645, 0.045, 0.355, 1);
  z-index: 1;
}
.cal-month:first-child {
  margin-top: -7.7142857143vh;
}
.cal-month:first-child > .cal-header {
  top: 15.4285714286vh;
}
.cal-month:first-child ~ .cal-month {
  margin-top: -7.7142857143vh;
}
.cal-month > .cal-header {
  position: absolute;
  height: 7.7142857143vh;
  width: 23.1428571429vh;
  padding: 2.2040816327vh;
  z-index: 1;
  transition: all 0.6s cubic-bezier(0.645, 0.045, 0.355, 1);
}
.cal-month > .cal-header > .cal-link {
  display: block;
  height: 100%;
  width: 100%;
  font-size: 1.9285714286vh;
  text-decoration: none;
  color: gray;
  text-transform: uppercase;
  padding: 0.6428571429vh 5.1428571429vh;
  border-radius: 2.5714285714vh;
  background: white;
  transition: all 0.6s cubic-bezier(0.645, 0.045, 0.355, 1);
  font-weight: 600;
}
.cal-month > .cal-header > .cal-link > span {
  display: block;
  position: absolute;
  top: 48%;
  left: 50%;
  transition: all 0.6s cubic-bezier(0.645, 0.045, 0.355, 1);
}
.cal-month.-january {
  margin-top: 0 !important;
}

.cal-subheader {
  height: 3.8571428571vh;
  width: 100%;
}

.cal-bar {
  height: 7.7142857143vh;
  display: flex;
  flex-direction: row;
  align-items: center;
}
.cal-bar > .cal-title {
  flex-grow: 1;
  height: 100%;
}
.cal-bar .-schedule {
  opacity: 0;
}

.cal-button {
  width: 7.7142857143vh;
  height: 7.7142857143vh;
}
.cal-button > * {
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  color: white;
  text-decoration: none;
  font-size: 3.0857142857vh;
}

.cal-title > .cal-heading {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  color: white;
  font-size: 3.0857142857vh;
}

.cal-arrow {
  position: absolute;
  height: 7.7142857143vh;
  width: 7.7142857143vh;
  background: white;
  top: 0;
  right: 0;
  padding: 1.2857142857vh;
  background-clip: content-box;
  border-radius: 50%;
  opacity: 0;
  pointer-events: none;
  transition: all 0.6s cubic-bezier(0.645, 0.045, 0.355, 1);
  display: flex;
  justify-content: center;
  align-items: center;
  text-decoration: none;
  color: gray;
}
.cal-arrow .fa-chevron-up {
  top: -1px;
}

.cal-day {
  counter-increment: month;
  width: 7.7142857143vh;
  height: 7.7142857143vh;
  display: block;
  float: left;
  text-decoration: none;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  color: white;
  font-size: 2.5714285714vh;
}
.cal-day[href="#schedule"]:before {
  background: rgba(255, 255, 255, 0.4);
}
.cal-day:before {
  content: counter(month);
  display: block;
  height: 75%;
  width: 75%;
  display: flex;
  justify-content: center;
  align-items: center;
  border-radius: 50%;
}

.cal-item {
  height: 7.7142857143vh;
  width: 100%;
  display: flex;
  flex-direction: row;
}
.cal-item.-long {
  height: 15.4285714286vh;
}
.cal-item:nth-child(1) > .cal-time {
  background-color: #fa739d;
}
.cal-item:nth-child(1) > .cal-task {
  background-color: white;
}
.cal-item:nth-child(2) > .cal-time {
  background-color: #f26993;
}
.cal-item:nth-child(2) > .cal-task {
  background-color: #fcf5f7;
}
.cal-item:nth-child(3) > .cal-time {
  background-color: #eb5e8a;
}
.cal-item:nth-child(3) > .cal-task {
  background-color: #f9ecf0;
}
.cal-item:nth-child(4) > .cal-time {
  background-color: #e35480;
}
.cal-item:nth-child(4) > .cal-task {
  background-color: #f6e2e8;
}
.cal-item:nth-child(5) > .cal-time {
  background-color: #dc4977;
}
.cal-item:nth-child(5) > .cal-task {
  background-color: #f4d8e1;
}
.cal-item:nth-child(6) > .cal-time {
  background-color: #d43f6d;
}
.cal-item:nth-child(6) > .cal-task {
  background-color: #f1ced9;
}
.cal-item:nth-child(7) > .cal-time {
  background-color: #cc3463;
}
.cal-item:nth-child(7) > .cal-task {
  background-color: #eec5d1;
}
.cal-item:nth-child(8) > .cal-time {
  background-color: #c52a5a;
}
.cal-item:nth-child(8) > .cal-task {
  background-color: #ebbbca;
}

.cal-time {
  width: 15.4285714286vh;
  flex-basis: 15.4285714286vh;
  height: 100%;
  justify-content: center;
  line-height: 7.7142857143vh;
  align-items: center;
  display: flex;
  flex-direction: column;
  color: white;
}
.cal-time > * {
  transition: all 0.6s cubic-bezier(0.645, 0.045, 0.355, 1);
  transform: translateX(-15.4285714286vh);
  font-weight: 600;
  font-size: 2.5714285714vh;
}

.cal-task {
  flex-basis: 38.5714285714vh;
  height: 100%;
  background-color: white;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: flex-start;
  padding: 0 2.5714285714vh;
  font-size: 1.9285714286vh;
}
.cal-task > p {
  margin-top: 0;
  margin-bottom: 0;
  color: #12255E;
}
.cal-task > a {
  text-decoration: none;
  color: #EA80A2;
  font-weight: 600;
}
.cal-task > a > .fa {
  margin-right: 0.9642857143vh;
}
.cal-task > * {
  transition: all 0.6s cubic-bezier(0.645, 0.045, 0.355, 1);
  transform: translateX(38.5714285714vh);
}

.meta {
  flex-basis: calc(80% - 54vh);
  font-size: 2.5714285714vh;
  font-weight: 300;
}
.meta p, .meta a {
  color: rgba(255, 255, 255, 0.7);
}
.meta h1 {
  font-size: 9.2571428571vh;
  line-height: 9.2571428571vh;
  font-weight: 300;
  color: white;
}
.meta p {
  line-height: 1.4;
}
.meta a:hover {
  color: rgba(255, 255, 255, 0.7);
}
@media (max-width: 750px) {
  .meta {
    display: none;
  }
}

body {
  background-image: url("<c:url value="/resources/images/gris-design.png" />");
  background-size: cover;
    background-repeat: no-repeat;
    background-position: 100% 50%;
}

*, *:before, *:after {
  box-sizing: border-box;
  position: relative;
}

.cal-month:before,
.cal-month:after {
  content: " ";
  /* 1 */
  display: table;
  /* 2 */
}

.cal-month:after {
  clear: both;
}

.route {
  display: none;
}
</style>

<script type="text/javascript">
	$(document).ready(function() {

		$('body').on("click", ".larg div h3", function() {
			if ($(this).children('span').hasClass('close')) {
				$(this).children('span').removeClass('close');
			} else {
				$(this).children('span').addClass('close');
			}
			$(this).parent().children('p').slideToggle(250);
		});

		$('body').on("click", "nav ul li a", function() {
			var title = $(this).data('title');
			$('.title').children('h2').html(title);
		});
	});
</script>
<body>
	<div class="page-wrapper chiller-theme toggled">
		<a id="show-sidebar" class="btn btn-sm btn-dark" href="#"> <i
			class="fas fa-bars"></i>
		</a>
		<jsp:include page='../includes/navbar-dashboard.jsp' />
		<!-- sidebar-wrapper  -->
		<main class="page-content">
			<div class="container">
				<h2>Planning</h2>
				<hr>
				<br>
				
				
				
			</div>
		</main>
	</div>


	<!-- page-content" -->

	<!-- page-wrapper -->
</body>
</html>