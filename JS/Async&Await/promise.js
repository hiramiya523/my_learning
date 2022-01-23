let callback = () => {
    console.log(1);

    setTimeout( () => console.log(3), 1000);

    console.log(2);
}
callback();


let prom = () => {
    // Promiseインスタンスの生成
    const promise = new Promise((resolve, reject) => {})  // resolve, rejectも関数
    console.log(promise);
}

prom();

// 成功時にthen
let resol = () => {
    const promise = new Promise((resoleve) => {
        resoleve("resolveの引数に渡す");
    }).then((hoge) =>{
        // resolve関数で渡した値がそのまま使える。
        console.log(hoge);
    });
}
resol();

// 失敗時にcatch
let rej = () => {
    const prom = new Promise((resolve, reject) => {
        // resolve(); thenに入る切り替え
        reject();
    })
        .then(() => console.log("resolve!!"))
        .catch(() => console.log("reject...."));
}
rej();

// メソッドチェーン
// then,chatchの後に別のthenを実行
let chain = () => {
    const prom = new Promise((resolve, reject) => {
        // reject("aa");
        resolve("test");
    })
        .then( (hoge) => {
            console.log(`then1: ${hoge}`);
            // 次のthenに、第一引数としてreturnで渡せる。
            return hoge;
        } )
        .catch((hoge) => {
            console.log(`catch: ${hoge}`);
            return sss;
        })
        .then((sss) => {
            console.log(`then2: ${sss}`)
        });

}
chain();

// setTimeout使わない動作確認
let iaa = 0;
new Promise((resolve) => {
    for(let i = 0; i < 10000000; i++){
        iaa++;
    }
    console.log(1);
    // return iaa;
    resolve("a");
})
.then((val) => {
    console.log(val);
    reject(); // newした時にreject渡さなくても使える
})
.catch((val) => {
    console.log("err")
    // catch後のthenは実行されない
})
.then((val) => {
    console.log(val);
})