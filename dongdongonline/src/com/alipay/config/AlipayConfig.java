package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016092500589649";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCFyw++eGODurHDtfJE1kzO+Nh9FjUsxM8K67E8SD12nqLl9TBiSdguE4RhYmjWD8OpNP7bbaa5nXI8wPYSoLnjGwdBAwT6qpF3G+2y/JHQ/HmeU677EmyDeWt33f8JyfOkwjJv2GoUPLRB/hsTytFCAaEDB6PK1OpKKcNaWOGQq7KBbCngf4+EN54GVVNfRL9dz+ojWmUqqWF5nJJUGxhR3dtnzU7Ymctt65EdOBRxUo2t/Fs1lf4P6cy2jub8lXVifROwCmnq+M0Audp6LFlSGYlfpgwPw5b82dzOKCNHES/uuHBv0Bj0m8dPLverg+pjOnx87aop2jWC/GBdIPc3AgMBAAECggEAYD56zOF9dL1QMyEnbi1ag2ivEwxupA3PgmOZ02uEC1iChjmi3JGSWVLg380S7SnZ7laZHu/6B3wjOWD1ouDL13sR9MpfQpKAodYNX7wgiN2V/zbjoOjX9pvZmxiu5jPIeLTZ42sio/wnD3HjuJElhv30/WD5imcvQrpYNR3K5W4O3JoFinAOXeIH6JTpLk5oaqkjNfdlNnhQ7ztQGgijfpSx7+GkPzxEGwT3MKfIMjjE0rR6fdRruBnj0k2RnjFcDkKFuyx3oOxzjvBFjmredSQoin/Nj/sjts0b49H5B51vuISUOKaaaw0bP/FdtNYRIPs+YLk/42eBXEginU0qQQKBgQDesVvZFEd06anyCbvP21eb5vxFirdUT/zFaDeSm55U+RAouetU+/J1+GSAesGeI/M7PvbNqSv94d4OxjDp/ic+Cqk8OXr40n04vmtRPvVNpxByYNYxnZd2r8fLqx+XjweBKIzazpEJXl/UhmFIW1AR0PeZ4zNqYjXOZZdUjJ4pywKBgQCZzdfqxe7mnZeWpI+vuJ946FShxwSpTTL6Hvf29bxUyvdmHFWucWTk0cqPlU47FK0WVdywl9hVWAXxZOmspn0w9ZIi+gugHQWcibQe+xffJAFpzUlyA5w6cTWWXdI3vPR8p2PyFpDuY39KrquNe3MbkCb/0KOzIoZb4uoc8b6qxQKBgQC2RwACGGpA1P3I4pS7FzOHpbK6DUfwGCSzRJGwS/Z2YQMMAtoQTsVwMGe7Dj+q/Iwb43bKcf1TKuzCtRDWhrSCQOGzLO1t+4SJzLs03k6VR/jbVk4cgHy4pjroh2ItgOJIovNgKhJnU7smzvOT8UIBw0TXzjOIkWivT1Jl30+arwKBgFxWmtTWtJE79/B3J9TFsOh0A6uEwqWqNXq48QIRkloN6O4jAMXUSlCeK1B8wRTzWt9X+UEESNskF51PioMfCXZFWNEq8aPVCLNscPlQoopTIY4Vs4yB4l+r7BI0jartBJN6I6UKK0UT8y4xI8mzXe4kY2WeK0m25pdv6kIqWOBJAoGBAJgoRYa80JwrgrVRyP72qRkbu4vJtqjxCUo+OFBgf1SkRJzJlSdThI9735DCzY/Yn/J3rPc32F25IKjB/OyYqIK9QKPhmouEP90omTILdccEQ1a7g2gpdKPXsWotlWPL42kjUB/Ahc3dG+vMzpdPPExrbBKE6cItMhIc6LmgBCqr";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAv0G2e7FwHF0tmCnUw6XwkmzUQezHmdNkJlHLW0+czmA4DaQUG/Sth90NM4Zn0xAM2mngJagiE0UPjZc9EQITCQBPsVG8aNERmHXQ4nO9+jKuTGrmuN4Dpe9WqpzyGC+3UVe9dZziNpRO4eSMHNZY0iBADnJkp8BJu8kNb37b8KTuniIZKQaMsS0W8ngfncScSCIegaTkg3kPYRhLNiz442j2r8pOVYJ5jeCMwmP1cNVc66HhTZ6akW6TnHUsgP2NsCOgZPPimPayIjTOigpnh86jqUznPpxrC8I+x0XlgXVB2XnJxicTHHkyjG0osqVzpnGiFVTBfx241FelGDtnKQIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://工程公网访问地址/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://192.168.10.148:8081/dangdangproject/order/order_update";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

