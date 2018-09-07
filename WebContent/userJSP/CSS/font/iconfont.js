(function(window){var svgSprite='<svg><symbol id="icon-menu-rank" viewBox="0 0 1024 1024"><path d="M465.6 642.784h-0.032a239.584 239.584 0 0 1-21.312-5.6l-0.256-0.096a239.616 239.616 0 0 1-77.792-41.856 260.224 260.224 0 0 1-16.256-14.176c-0.16-0.16-0.32-0.384-0.544-0.544a265.28 265.28 0 0 1-42.016-51.328l-1.28-1.984a268.224 268.224 0 0 1-10.496-18.272l-1.248-2.368a266.016 266.016 0 0 1-6.4-13.248c-2.752 0.256-5.536 0.576-8.288 0.576-54.368 0-107.968-49.408-126.464-121.152-21.12-82.112 11.712-162.4 73.376-179.424a89.504 89.504 0 0 1 34.336-2.464V113.376a26.88 26.88 0 0 1 26.464-27.328H736.64c14.592 0 26.4 12.256 26.4 27.328v77.472a89.664 89.664 0 0 1 34.368 2.464c61.664 16.992 94.496 97.312 73.376 179.424-18.464 71.776-72.096 121.152-126.464 121.152-2.72 0-5.504-0.288-8.256-0.544-2.048 4.512-4.16 8.96-6.432 13.28l-1.184 2.336a277.312 277.312 0 0 1-24 37.984 266.048 266.048 0 0 1-29.856 33.6l-0.544 0.544a253.184 253.184 0 0 1-16.288 14.176l-0.768 0.608a240.576 240.576 0 0 1-76.992 41.248l-0.32 0.096a238.08 238.08 0 0 1-21.248 5.568h-0.064v152.16h160.768c12.608 0 23.648 8.672 27.04 21.248l20.224 75.136a29.792 29.792 0 0 1 2.176 11.264c0 16.032-12.576 29.056-28.064 29.056H283.776c-8.8 0-17.056-4.256-22.368-11.488s-7.008-16.576-4.704-25.344l21.152-78.624a28.224 28.224 0 0 1 27.04-21.248h160.704v-152.16z m361.728-282.048c14.464-56.288-4.544-112.384-41.536-122.528a44.16 44.16 0 0 0-11.936-1.6c-3.584 0-7.232 0.512-10.848 1.28v128.96a315.616 315.616 0 0 1-4.384 51.968 293.44 293.44 0 0 1-4.256 20.992l-0.832 3.2a115.136 115.136 0 0 1-0.896 3.552c31.872-5.376 62.944-40.416 74.656-85.856z m-630.656 0c11.68 45.408 42.816 80.48 74.656 85.856l-0.896-3.552c-0.256-1.088-0.576-2.144-0.8-3.2a316.384 316.384 0 0 1-4.288-20.992l-0.608-3.776a304.096 304.096 0 0 1-2.624-21.696l-0.192-3.136a313.12 313.12 0 0 1-0.96-23.36V237.888a52.256 52.256 0 0 0-10.816-1.28c-4.064 0-8.064 0.512-11.968 1.6-36.96 10.176-55.968 66.272-41.504 122.56z m452.544-52.928c2.912-2.24 4.064-6.144 2.976-9.664s-4.256-5.952-7.872-6.016l-93.632-1.952-30.752-90.496c-1.184-3.488-4.352-5.824-7.936-5.824s-6.784 2.336-7.936 5.824l-30.784 90.496-93.664 1.952c-3.616 0.096-6.752 2.528-7.872 6.016s0.096 7.456 2.976 9.664l74.56 57.888-27.072 91.584c-1.088 3.552 0.16 7.392 3.04 9.6s6.848 2.24 9.792 0.128l76.928-54.752 76.928 54.752a8.128 8.128 0 0 0 9.728-0.128 8.896 8.896 0 0 0 3.104-9.6l-27.136-91.584 74.592-57.888z"  ></path></symbol></svg>';var script=function(){var scripts=document.getElementsByTagName("script");return scripts[scripts.length-1]}();var shouldInjectCss=script.getAttribute("data-injectcss");var ready=function(fn){if(document.addEventListener){if(~["complete","loaded","interactive"].indexOf(document.readyState)){setTimeout(fn,0)}else{var loadFn=function(){document.removeEventListener("DOMContentLoaded",loadFn,false);fn()};document.addEventListener("DOMContentLoaded",loadFn,false)}}else if(document.attachEvent){IEContentLoaded(window,fn)}function IEContentLoaded(w,fn){var d=w.document,done=false,init=function(){if(!done){done=true;fn()}};var polling=function(){try{d.documentElement.doScroll("left")}catch(e){setTimeout(polling,50);return}init()};polling();d.onreadystatechange=function(){if(d.readyState=="complete"){d.onreadystatechange=null;init()}}}};var before=function(el,target){target.parentNode.insertBefore(el,target)};var prepend=function(el,target){if(target.firstChild){before(el,target.firstChild)}else{target.appendChild(el)}};function appendSvg(){var div,svg;div=document.createElement("div");div.innerHTML=svgSprite;svgSprite=null;svg=div.getElementsByTagName("svg")[0];if(svg){svg.setAttribute("aria-hidden","true");svg.style.position="absolute";svg.style.width=0;svg.style.height=0;svg.style.overflow="hidden";prepend(svg,document.body)}}if(shouldInjectCss&&!window.__iconfont__svg__cssinject__){window.__iconfont__svg__cssinject__=true;try{document.write("<style>.svgfont {display: inline-block;width: 1em;height: 1em;fill: currentColor;vertical-align: -0.1em;font-size:16px;}</style>")}catch(e){console&&console.log(e)}}ready(appendSvg)})(window)