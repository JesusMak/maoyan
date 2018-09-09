package com.maoyan.ctrl;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.maoyan.bean.User;
import com.maoyan.service.UserInfoService;

/**
 * Servlet implementation class FileUpload
 */
@WebServlet("/FileUpload")
public class FileUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FileUpload() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = new User();
		try {
			// 收集数据的容器
			Map<String, Object> map = new HashMap<String, Object>();
			// 创建磁盘文件项工厂
			DiskFileItemFactory factory = new DiskFileItemFactory();
			// 创建文件上传的核心对象
			ServletFileUpload upload = new ServletFileUpload(factory);
			// 解析request获得文件项对象集合
			List<FileItem> parseRequest = upload.parseRequest(request);
			for (FileItem item : parseRequest) {
				// 判断是否是普通表单项
				boolean formField = item.isFormField();
				if (formField) {
					// 普通表单项获得数据 封装到实体中
					String fieldName = item.getFieldName();
					String fieldVlue = item.getString("UTF-8");
					// 放进map里可以自动封装数据
					map.put(fieldName, fieldVlue);

				} else {
					// 文件上传项获得文件的名称，获得文件的内容
					String fieldName = item.getFieldName();
					// 将上传的文件的输入流读取到一个字节数组
					InputStream in = item.getInputStream();
					byte[] bytes = new byte[in.available()];
					in.read(bytes, 0, in.available());
					item.delete();
					map.put(fieldName, bytes);
				}
			}
			// BeanUtils.populate(shop, request.getParameterMap());

			BeanUtils.populate(user, map);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// System.out.println(shop);
		UserInfoService.getUserInfoService().updateuserPic(user, "17875512027");

	}

}
