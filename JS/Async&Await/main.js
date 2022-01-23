/**
 *  asyncは非同期関数を定義する関数宣言であり、関数の頭につけることで、
 *  Promiseオブジェクトを返す関数にすることができる。
 */

const asyngFunc = async () => {
    console.log("aa");
    return 1;
};
// promiseオブジェクトが返却されるため、thenで繋がるようになる
console.log(asyngFunc().then(asyngFunc()));


/**
 * awaitは、Promiseオブジェクトが値を返すのを待つ演算子です。
 * awaitは必ず、async function内で。
 */
const asyFunc = async () => {

}