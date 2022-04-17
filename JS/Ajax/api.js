// 確認用コマンド
//  XXXXXXは自分のアクセストークン
// curl -H "Authorization: Bearer XXXXXX" https://qiita.com/api/v2/authenticated_user

// 素のJavaScriptでAjax
const api_endpoint = "https://qiita.com/api/v2/authenticated_user/items";
const token = "XXXXXXX"; // 個人のアクセストークンを利用
let out = document.getElementById("out");
console.log(out);
/**
 * Qiita API v2で、自分のアカウントプロフィールを取得
 * @param {string} url -  エンドポイントurl
 */
let readQiitaApi = (url) => {
    console.log(out);
    // 1, XMLHttpRequest オブジェクトを生成
    let xhr = new XMLHttpRequest();

    // 2, サーバ応答時の処理を定義(onreadystatechangeイベント)
    xhr.onreadystatechange = () => {
        // 通信完了時
        if(xhr.readyState == 4){
            // 通信成功時
            if(xhr.status == 200){
                out.innerHTML = xhr.responseText;
                console.log("成功");
            }else{
                console.log("失敗");
            }
        }else{
            out.innerHTML = "通信中・・・";
        }
    };

    // 3, サーバにリクエストを送信 
    // open(HTTPメソッド, URL, 非同期モードで通信するか, ユーザー名, パスワード)
    xhr.open("GET", url, true);
    
    // リクエストヘッダ設定(第一引数にヘッダ名、第二にヘッダの値)
    xhr.setRequestHeader('Authorization', 'Bearer ' + token);

    // send(): openメソッドでGETにした場合はnull
    xhr.send(null);

}