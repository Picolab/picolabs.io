ruleset name {
  meta {
    shares __testing, name
  }
  global {
    __testing = { "queries":
      [ { "name": "__testing" }
      , { "name": "name", "args": [ "name" ] }
      ] , "events":
      [ { "domain": "name", "type": "name" }
      , { "domain": "name", "type": "name", "attrs": [ "name" ] }
      ]
    }
    name = function(name){
      name.klog("name") => name | "name"
    }
  }
  rule name {
    select when name name
    pre {
      name = event:attr("name").defaultsTo(name(name),"name")
    }
    send_directive("name",{"name": name || "name"})
  }
  rule name_provided {
    select when name name name re#(.+)# setting(name)
    send_directive("name",{"name": name})
  }
}
