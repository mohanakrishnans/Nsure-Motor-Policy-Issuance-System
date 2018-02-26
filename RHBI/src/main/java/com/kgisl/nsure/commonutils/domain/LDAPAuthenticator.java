package com.kgisl.nsure.commonutils.domain;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.Properties;

import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;
import org.jasypt.exceptions.EncryptionOperationNotPossibleException;

import com.kgisl.nsure.authenticate.domain.LoginDO;

public class LDAPAuthenticator {
	/*private FWKILogger logger = FWKLogManager.getInstance().getDefaultLogger("motortransaction");
	private LdapTemplate ldapTemplate;
	private StandardPBEStringEncryptor standardPBEStringEncryptor;
	private Properties prop;
	File file = new File("."+File.separator+FWKConstants.NSURE_CONFIG_FOLDER+File.separator+"ldap.properties");
	public LDAPAuthenticator(StandardPBEStringEncryptor standardPBEStringEncryptor,String key)
	{
		try
		{ 
			this.standardPBEStringEncryptor = standardPBEStringEncryptor;
			this.standardPBEStringEncryptor.setPassword(key);
			if(ldapTemplate == null)
			{
				
				logger.info(this.getClass(), "LDAPAuthenticator", "Intializing LDAP Configuration");
				logger.info(this.getClass(), "LDAPAuthenticator",file.getAbsolutePath());
				FileInputStream fin = new FileInputStream(file);
				prop = new Properties();
				prop.load(fin);
				fin.close();
				if(prop.getProperty("ldap.validation") != null && prop.getProperty("ldap.validation").trim().length() > 0 && prop.getProperty("ldap.validation").trim().equalsIgnoreCase("yes") )
				{
					String password = encryptProperties();
					LdapContextSource contextSource = new LdapContextSource();
					if(prop.getProperty("ldap.url") != null && prop.getProperty("ldap.url").trim().length() > 0)
						contextSource.setUrl(prop.getProperty("ldap.url") );
					else
						throw new NsureException("Invalid LDAP URL");
					if(prop.getProperty("ldap.base") != null && prop.getProperty("ldap.base").trim().length() > 0)
						contextSource.setBase(prop.getProperty("ldap.base"));
					if(prop.getProperty("ldap.userDn") != null && prop.getProperty("ldap.userDn").trim().length() > 0)
						contextSource.setUserDn(prop.getProperty("ldap.userDn"));
					if(password != null && password.length() > 0)
						contextSource.setPassword(password);
					contextSource.afterPropertiesSet();
	
					ldapTemplate = new LdapTemplate(contextSource);
					ldapTemplate.afterPropertiesSet();
					
					logger.info(this.getClass(), "LDAPAuthenticator", "Intialized LDAP Configuration");
				}
				else
					logger.info(this.getClass(), "LDAPAuthenticator", "LDAP authentication is not enabled");
			
			}
		}
		catch(NsureException e)
		{
			logger.fatal(this.getClass(), "LDAPAuthenticator", e);
			throw e;
		}
		catch(FileNotFoundException e)
		{
			logger.fatal(this.getClass(), "LDAPAuthenticator", e);
			logger.warn(this.getClass(), "LDAPAuthenticator", "LDAP configuration file is not found.Authentication mechanism has been defaulted as DB");
		}
		catch(Exception e)
		{
			logger.fatal(this.getClass(), "LDAPAuthenticator", e);
			throw new NsureException(e.getMessage());
		}
	}
	public boolean validate(LoginDO loginDO) throws NsureException
	{
		logger.info(this.getClass(), "validate", "Validating Login Credentials");
		boolean isValidLogin = false;
		try
		{
			if(prop.getProperty("ldap.validation") != null && prop.getProperty("ldap.validation").trim().length() > 0 && prop.getProperty("ldap.validation").trim().equalsIgnoreCase("yes") )
			{
				if(prop.getProperty("ldap.validateByEntry") != null && prop.getProperty("ldap.validateByEntry").trim().length() > 0)
				{
					Filter filter = new EqualsFilter(prop.getProperty("ldap.validateByEntry"), loginDO.getUserName());
					if(prop.getProperty("ldap.ou") != null && prop.getProperty("ldap.ou").trim().length() > 0)
						isValidLogin = ldapTemplate.authenticate("ou="+prop.getProperty("ldap.ou"), filter.encode(),  loginDO.getPassword());
					else
						isValidLogin = ldapTemplate.authenticate(DistinguishedName.EMPTY_PATH, filter.encode(),  loginDO.getPassword());
					
				}
				else
					throw new NsureException("ldap.validateByEntry is not found.");
			}
			else
				throw new NsureException("LDAP Authentication is not enabled");
			
		}
		catch(NsureException e)
		{
			logger.fatal(this.getClass(), "validate", e);
			throw e;
		}
		catch(Exception e)
		{
			logger.fatal(this.getClass(), "validate", e);
			throw new NsureException(e.getMessage());
		}
		logger.info(this.getClass(), "validate", "Validating Login Credentials finished");
		return isValidLogin;
	}
	public String getLdapProperty(String property) 
	{
		if(prop != null)
			return prop.getProperty(property);
		else
			return null;
	}
	private String  encryptProperties()
	{
		String password = null;
		try
		{
			try
			{
				password = standardPBEStringEncryptor.decrypt(prop.getProperty("ldap.password"));
				
			}
			catch(EncryptionOperationNotPossibleException  e)
			{
				password = prop.getProperty("ldap.password");
				String passwordEncrypted = standardPBEStringEncryptor.encrypt(prop.getProperty("ldap.password"));
				prop.setProperty("ldap.password", passwordEncrypted);
				FileOutputStream fout = new FileOutputStream(file);
				prop.store(fout, null);
				fout.close();
				
			}
			
			
		}
		catch(NsureException e)
		{
			logger.fatal(this.getClass(), "validate", e);
			throw e;
		}
		catch(Exception e)
		{
			logger.fatal(this.getClass(), "validate", e);
			throw new NsureException(e.getMessage());
		}
		return password;
	}*/
}
