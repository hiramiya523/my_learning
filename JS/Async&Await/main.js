/**
 *  asyncは非同期関数を定義する関数宣言であり、関数の頭につけることで、
 *  Promiseオブジェクトを返す関数にすることができる。
 */
const asyngFunc = async () => {
    console.log("aa");
    return 1;
};
// promiseオブジェクトが返却されるため、thenで繋がるようになる
console.log(asyngFunc().then( e => console.log(e)));


/**
 * awaitは、Promiseオブジェクトが値を返すのを待つ演算子です。
 * awaitは必ず、async function内で。
 */
// setTimeout をPromiseでラップ
const wait = ms => new Promise(resolve => setTimeout(() => resolve(), ms));

const asyFunc = async () => {
    console.log(1);
    await wait(2000);
    console.log(2);
}
asyFunc();



// ###########################################################
/**
 * async でPromise.all
 * 非同期関数の配列を、並行して実行
 */
const proFun = num => {
    return new Promise((resolve, reject) => {
        setTimeout(() => resolve(num * 2), 3000);
    })
} 

// 非同期
const asFun = async () => {
    const values = await Promise.all([
        proFun(1),
        proFun(2),
        proFun(3)
    ]);

    //promise.allのおかげで、9秒かかる処理が3秒に 
    console.log(values);
}
asFun();