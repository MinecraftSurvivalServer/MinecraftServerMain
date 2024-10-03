import{u as v}from"./scheduler.95481435.js";import{w as p}from"./index.f2cb1ae8.js";var d={};function x(e){return e==="local"?localStorage:sessionStorage}function C(e,n,s){var h,S;const a=(h=s==null?void 0:s.serializer)!=null?h:JSON,b=(S=s==null?void 0:s.storage)!=null?S:"local",w=typeof window<"u"&&typeof document<"u",i=w?x(b):null;function f(u,g){i==null||i.setItem(u,a.stringify(g))}if(!d[e]){const u=p(n,t=>{const l=i==null?void 0:i.getItem(e);if(l?t(a.parse(l)):f(e,n),w){const o=c=>{c.key===e&&t(c.newValue?a.parse(c.newValue):null)};return window.addEventListener("storage",o),()=>window.removeEventListener("storage",o)}}),{subscribe:g,set:L}=u;d[e]={set(t){f(e,t),L(t)},update(t){return u.update(l=>{const o=t(l);return f(e,o),o})},subscribe:g}}return d[e]}var r=(e=>(e[e.Dark=0]="Dark",e[e.Light=1]="Light",e[e.System=2]="System",e))(r||{}),D=(e=>(e[e.Error=0]="Error",e[e.Warning=1]="Warning",e[e.Permission=2]="Permission",e[e.Info=3]="Info",e[e.Success=4]="Success",e))(D||{});function M(){var e=new Date().getHours();return e<12?"morning":e>=5&&e<18?"afternoon":e>=18&&e<=22?"evening":"hi"}function z(e=0){return e===0?"Offline":e===1?"Online":e===2?"Restarting":e===3?"Starting":e===4?"Stopping":""}function F(e=0){return e===0?"bg-red-500 ":e===1?"bg-green-500":e===2?"bg-orange-500":e===3?"bg-green-500 ":e===4?"bg-red-500":"bg-gray-500"}function H(e=0){return e===0?"text-red-500":e===1?"text-green-500":e===2?"text-orange-500":e===3?"text-green-500":e===4?"text-red-500":"text-gray-500"}const m=C("settings",{serversRefreshRate:5,consoleRefreshRate:5,autoScrollConsole:!0,chatModeConsole:!1,amountOfConsoleLines:50,reverseConsoleLines:!1,panelTheme:r.Light,debugging:!1,loadedSuccessfully:!0});function R(){return v(m).panelTheme==r.System?I():v(m).panelTheme??r.Light}function E(e){m.update(n=>(n.panelTheme=e,n))}function N(){const e=R();E(e==r.Dark?r.Light:r.Dark)}function I(){return window.matchMedia&&window.matchMedia("(prefers-color-scheme: dark)").matches?r.Dark:r.Light}export{r as P,D as W,E as a,F as b,H as c,z as d,M as e,R as g,C as p,m as s,N as t};
