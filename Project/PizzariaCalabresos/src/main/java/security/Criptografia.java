package security;

import java.math.BigInteger;
import java.security.MessageDigest;

public class Criptografia {

	public static String criptografar (String hash) {
		String retorno = "";
		MessageDigest md;
		try {
			md = MessageDigest.getInstance("MD5");
			BigInteger criptografia = new BigInteger(1,md.digest(hash.getBytes()));
			retorno = criptografia.toString(16);
		}
		catch(Exception e){
			
		}
		return retorno;
	}

}
