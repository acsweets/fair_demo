GLOBAL['#FairKey#']=(function(__initProps__){const __global__=this;return runCallback(function(__mod__){with(__mod__.imports){function _TestPageState(){const inner=_TestPageState.__inner__;if(this==__global__){return new _TestPageState({__args__:arguments});}else{const args=arguments.length>0?arguments[0].__args__||arguments:[];inner.apply(this,args);_TestPageState.prototype.ctor.apply(this,args);return this;}}_TestPageState.__inner__=function inner(){this.fairProps=__initProps__;this.feedList=[];this._pageName='TestPage';};_TestPageState.prototype={showToast:function showToast(){const __thiz__=this;with(__thiz__){FairCommonPlugin().showMessageToast(convertObjectLiteralToSetOrMap({['pageName']:_pageName,['msg']:'调用插件案例',}));}},};_TestPageState.prototype.ctor=function(){};;return _TestPageState();}},[]);})(convertObjectLiteralToSetOrMap(JSON.parse('#FairProps#')));