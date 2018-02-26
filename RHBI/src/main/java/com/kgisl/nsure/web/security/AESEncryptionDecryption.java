package com.kgisl.nsure.web.security;

import java.util.HashMap;

import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/**
 * @author Manojkumar.M
 * Update on : 30-May-2016
 * AES 128 CBC Encryption / Decryption
 */
public class AESEncryptionDecryption {
	public static HashMap<String, String> encrypt(String string) {
		byte[] passwordKey;
		HashMap<String, String> passwordCredential = new HashMap<>();
		try {
			KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
			keyGenerator.init(128);
			SecretKey secretKey = keyGenerator.generateKey();
			Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
			IvParameterSpec iv = new IvParameterSpec(secretKey.getEncoded());
			cipher.init(Cipher.ENCRYPT_MODE, secretKey,iv);			
			passwordKey = cipher.doFinal(string.getBytes());
			passwordCredential.put("key", byte2hex(secretKey.getEncoded()));
			passwordCredential.put("password", byte2hex(passwordKey));
			return passwordCredential;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
    public static String decryptData(byte[] data, byte[] raw) throws Exception{
    	String afterEncode = ""; 
    	try{	
    		SecretKeySpec skeySpec = new SecretKeySpec(raw, "AES");
    		Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    		IvParameterSpec iv = new IvParameterSpec(raw);
    		cipher.init(Cipher.DECRYPT_MODE, skeySpec,iv);
    		byte[] decrypted = cipher.doFinal(data);
    		afterEncode =  ConvertToString(decrypted);
    	}
    	catch (Exception e){
    		e.printStackTrace();
    	}
    return afterEncode;
}
    
    // converting bytes to hex string
    public static String byte2hex(byte[] b) {
    	String hs="";
    	String stmp="";
    	for (int n=0;n<b.length;n++){
    		stmp=java.lang.Integer.toHexString(b[n] & 0XFF);
    		if (stmp.length()==1)
    			hs=hs+"0"+stmp;
    		else 
    			hs=hs+stmp;
    	}
    	return hs.toUpperCase();
    }
    
    // converting to hexstring to bytes
    public static byte[] hex2byte(String strhex){
    	if(strhex==null) return null;
        	int l = strhex.length();
   
        if(l %2 ==1) return null;
    	byte[] b = new byte[l/2];
    	for(int i = 0 ; i != l/2 ;i++){
    		b[i] = (byte)Integer.parseInt(strhex.substring(i *2,i*2 +2),16);
    	}
        return b;
    }

    private static String ConvertToString(byte[] _bytes){
		char[] result = new char[_bytes.length];
		for(int i = 0; i < _bytes.length; i++) {result[i] = (char)_bytes[i];}
		return new String(result);
	}
    
    public static void main(String[] args){
    	String data = "rhb#321";
    	try {

    		String encryptedpassword = AESEncryptionDecryption.decryptData(AESEncryptionDecryption.hex2byte("CBFBCA8F88B3F83A6ACFE976B7BBB627".toString()),
    				AESEncryptionDecryption.hex2byte("A0C8C763CAEB3F780CCE466EBCA18647".toString()));
    		System.out.println(encryptedpassword);
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    }
}