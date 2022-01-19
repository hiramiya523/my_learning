
let timer = () =>{
    now = new Date();
    document.getElementById("timer").innerHTML = 
    `${now.getHours()}:${now.getMinutes()}:${now.getSeconds()}`;
}
// リアルタイムで更新(0.5秒ごとにtimer関数起動)
let timerId = setInterval(timer, 500);

// setIntervalの返り値を持ちいて、インターバルのクリアなど可能
// clearInterval(timerId);