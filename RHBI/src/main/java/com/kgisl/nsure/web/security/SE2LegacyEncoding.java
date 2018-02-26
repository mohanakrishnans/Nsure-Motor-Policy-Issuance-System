package com.kgisl.nsure.web.security;

public class SE2LegacyEncoding 
{
	private static int prefix = 376;
	private static String postfix = "P$Y";
  
	public SE2LegacyEncoding(){}
	/// <summary>
	/// This method accepts a string and returns an encrypted version of the
	/// string to the calling mechanism.
	/// </summary>
	/// <param name="_message">The string to encrypt</param>
	/// <returns>The encrypted version of the message</returns>
	public static String encrypt(String _message){
		String afterEncode;
		Base64Encoder myEncoder1=new Base64Encoder(ConvertToByte(_message));
		StringBuffer buff1 = new StringBuffer();
		buff1.append(myEncoder1.GetEncoded());
        
		afterEncode = buff1.toString();

		//get length of encoded string and mask it by adding the prefix
		int codeLengthint = afterEncode.length() + prefix;
	
		//turn it back into a string, append the encoded word, and add a postfix to mask it
		String codeLength = String.valueOf(codeLengthint);
		afterEncode = codeLength + afterEncode + postfix;
	 
		//encode again for good measure
		byte[] byte1 = ConvertToByte(afterEncode);
		Base64Encoder myEncoder=new Base64Encoder(byte1);
		StringBuffer buf = new StringBuffer();
		buf.append(myEncoder.GetEncoded());
		afterEncode = buf.toString();

		//remove problematic characters and add a string that is unlikely to exist by chance
		String testString = "";
		String outString = "";
		for (int i=0; i < afterEncode.length(); i++){
			testString = String.valueOf(afterEncode.charAt(i));
    		if (testString.equalsIgnoreCase("?")){
				testString = "QUESTION";
			}
			else if (testString.equalsIgnoreCase("&")){
				testString = "AMPERSAND";
			}
			else if (testString.equalsIgnoreCase("=")){
				testString = "EQUALSTO";
			}
			outString += testString;
		}
		afterEncode = outString;
	 	return afterEncode;
	}
    
	/// <summary>
	/// This method accepts an encrypted string and returns the unencrypted
	/// version of the string to the calling mechanism.
	/// </summary>
	/// <param name="_message">The string to decrypt</param>
	/// <returns>The decrypted version of the message</returns>
	public static String decrypt(String _message){
		String afterEncode = _message;
		String testString = "";
		String afterDecode = "";
		int codeLengthint = 0;
		try{
			//replace key words with the characters they represent
			while (afterEncode.indexOf("QUESTION") != -1){
				testString = afterEncode.substring(0, afterEncode.indexOf("QUESTION"));
				afterEncode = testString + "?" + afterEncode.substring(afterEncode.indexOf("QUESTION")+8);
			}
			while (afterEncode.indexOf("AMPERSAND") != -1){
				testString = afterEncode.substring(0, afterEncode.indexOf("AMPERSAND"));
				afterEncode = testString + "&" + afterEncode.substring(afterEncode.indexOf("AMPERSAND")+9);
			}
			while (afterEncode.indexOf("EQUALSTO") != -1){
				testString = afterEncode.substring(0, afterEncode.indexOf("EQUALSTO"));
				afterEncode = testString + "=" + afterEncode.substring(afterEncode.indexOf("EQUALSTO")+8);
			}
			Base64Decoder base64Decoder = new Base64Decoder(afterEncode.toCharArray());
			afterEncode =  ConvertToString(base64Decoder.GetDecoded());
    
			//get length of encoded character
			codeLengthint = Integer.parseInt(afterEncode.substring(0, 3)) - prefix;

			//retrieve encoded word and decrypt it
			afterEncode = afterEncode.substring(3, codeLengthint+3);

			Base64Decoder base64Decoder1 = new Base64Decoder(afterEncode.toCharArray());
			afterDecode = ConvertToString(base64Decoder1.GetDecoded());
		}
		catch( Exception ex ){
			ex.printStackTrace();
			//throw new Exception( sMsg, ex );
		}
		return afterDecode;
	}


	/*  <summary>
	 Converts a string to a byte array.
	 </summary>
	 <param name="_string">String to be converted to a byte array</param>
	 <returns>The converted byte array</returns> */
	private static byte[] ConvertToByte(String _string){
		byte[] result = _string.getBytes() ;
		return result;
	}
    
	/* <summary>
	 Converts a byte array to a string array.
	 </summary>
	 <param name="_bytes">Byte array to be converted to string</param>
	 <returns>The converted string</returns> */
	private static String ConvertToString(byte[] _bytes){
		char[] result = new char[_bytes.length];
		// Convert each of the characters in the string to byte
		for(int i = 0; i < _bytes.length; i++) {result[i] = (char)_bytes[i];}
		return new String(result);
	}
}