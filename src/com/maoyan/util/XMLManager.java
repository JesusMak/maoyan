package com.maoyan.util;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class XMLManager {
	/**
	 * 获得xml文档对象的方法。
	 * @param uri
	 * @return
	 * @throws ParserConfigurationException 
	 * @throws IOException 
	 * @throws SAXException 
	 */
	public static Document getDocument(String uri) throws ParserConfigurationException, SAXException, IOException {
		//1。获得解释器工厂对象DocunmentBuilderFactory
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		
		//2.获得文档解析器DocumentBuilder
		DocumentBuilder db = dbf.newDocumentBuilder();
		
		//3。获得文档对象Document
		Document doc = db.parse(uri);
		return doc;
	}
	
	public static List<String> getChildElementContent(Document doc){
		List<String> childElementList = new ArrayList<String>();
		//1.根据文档对象Document获得根节点
		Element rootElement = doc.getDocumentElement();
		
		//2.通过根节点对象获得子节点或者子节点列表（子节点的集合）,通过*通配符，可以代表所有的子节点名称
		NodeList childElements = rootElement.getElementsByTagName("*");
		
		//3.遍历查询子节点列表，进而获得每个子节点列表的内容
		for(int i = 0; i < childElements.getLength();i ++) {
			Element childElement = (Element) childElements.item(i);
			
			//获得子节点的内容content
			String childElementContent = childElement.getTextContent();
			
			childElementList.add(childElementContent);
		}
		return childElementList;
		
	}
	
	public static void main(String[] args) throws ParserConfigurationException, SAXException, IOException {
		Document doc = getDocument("E:\\Project\\JAVA\\maoyan\\src\\com\\maoyan\\util\\db.xml");
		
		List<String> childElementList = getChildElementContent(doc);
		for(String childElementContent:childElementList) {
			System.out.println(childElementContent);
		}
	}

}

