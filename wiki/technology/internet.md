Internet
========


Bookmarklet
-----------


### Clean Google links
```javascript
javascript:(function(){var%20i,originalHref,newHref,aa=document.getElementsByTagName(%22a%22),pattern=/^https:\/\/www.google.com\/url%3F(.+)url=(.+)%26ct=ga%26cd=(.+)$/;for(var%20i%20in%20aa)originalHref=aa[i].href,originalHref%26%26originalHref.match(pattern)%26%26(newHref=originalHref.replace(pattern,%22$2%22),aa[i].href=newHref)})();
```