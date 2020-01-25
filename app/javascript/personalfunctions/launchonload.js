const launchFunctionOnLoad = (functionToLaunch) => {
    if(window.attachEvent) {
      window.attachEvent('onload', functionToLaunch);
  } else {
      if(window.onload) {
          var curronload = window.onload;
          var newonload = function(evt) {
              curronload(evt);
              functionToLaunch(evt);
          };
          window.onload = newonload;
      } else {
          window.onload = functionToLaunch;
      }
  };
};

export { launchFunctionOnLoad };
