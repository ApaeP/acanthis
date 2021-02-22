const showMenu = (menuId) => { document.getElementById(menuId).classList.add('show'); };
const hideMenu = (menuId) => { document.getElementById(menuId).classList.remove('show'); };

const getElPosition = (menuId) => {
  const viewportOffset = document.getElementById(menuId).getBoundingClientRect();
  return { top: Math.round(viewportOffset.top), right: Math.round(viewportOffset.left + viewportOffset.width), bottom: Math.round(viewportOffset.top + viewportOffset.height), left: Math.round(viewportOffset.left) };
};

const calulateHeightDifference = (triggerId, menuId) => {
  return document.getElementById(menuId).getBoundingClientRect().top - document.getElementById(triggerId).getBoundingClientRect().top - 8
};

const mouseIsOut = (elem, cursor, topTolerance, widthTolerance) => {
  return (cursor.y < (elem.top - topTolerance) || cursor.y > elem.bottom || cursor.x < elem.left || cursor.x > elem.right);
};

const openCloseDropdownMenu = (triggerId, menuId) => {
  let menuPos; let cursorPos; let topTol; let mouseMoveCount = 0;
  // const menu = document.getElementById(menuId);
  document.getElementById(triggerId).addEventListener('mouseover', (e) => {
    mouseMoveCount += 1;
    showMenu(menuId);
    topTol = calulateHeightDifference(triggerId, menuId);
    console.log(mouseMoveCount);
    menuPos = getElPosition(menuId);
    document.addEventListener('mousemove', e => {
      if (mouseIsOut(menuPos, {x: e.clientX, y: e.clientY}, topTol)) {
        hideMenu(menuId);
      };
    });
  });
};

export { openCloseDropdownMenu };
