# Ruby SOAP client using NOVA

## How to try it 

```
  $ ruby main.rb
```


## Open SOAP API for testings

https://documenter.getpostman.com/view/8854915/Szf26WHn#33a2b225-11a6-48d3-a695-fb0989cc4971


**SOAPClient** class is used to encapsulate the third party lib used to extract the soap xml response. we are using
currently [savon vr2](https://rubygems.org/gems/savon/versions/2.11.1?locale=es) since has a easy api and transform the result using [nori](https://rubygems.org/gems/nori) gem

Official Savon page https://www.savonrb.com/


Each new SOAP service should inheritance from SOAPClient and implement the **wsd_url* method with the url soap service
