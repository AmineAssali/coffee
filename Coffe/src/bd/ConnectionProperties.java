package bd;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Properties;

public class ConnectionProperties {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Properties properties = new Properties();
		properties.setProperty("url", "jdbc:oracle:thin:@localhost:1521/xe");
		properties.setProperty("user", "test");
		properties.setProperty("pass", "test");
		
		try {
			properties.storeToXML(new FileOutputStream("props.xml"), null);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	
}
