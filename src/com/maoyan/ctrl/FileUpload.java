package com.maoyan.ctrl;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
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
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;

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
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = new User();
		try {
			// 使用fileupload保存图片和将商品的信息放入到map中
			// 创建map存放商品信息
			Map<String, Object> map = new HashMap<String, Object>();
			// 创建磁盘文件项工厂（设置临时文件的大小和位置）
			DiskFileItemFactory factory = new DiskFileItemFactory();
			// 创建核心上传对象
			ServletFileUpload upload = new ServletFileUpload(factory);
			// 解析请求，获取所有的上传组件（List<FileItem>）
			List<FileItem> list = upload.parseRequest(request);
			for (FileItem fi : list) {
				// 1、获取标签的name属性
				String key = fi.getFieldName();

				// 2、判断是不是普通的上传组件
				if (fi.isFormField()) {
					// 普通上传组件
					map.put(key, fi.getString("utf-8"));

				} else {
					// a.获取文件的名称
					String realName = fi.getName();
					// e.获取文件内容
					InputStream is = fi.getInputStream();
					System.out.println(is);
					// f.创建输出流
					// 获取images目录的真实路径
					String productPath = getServletContext().getRealPath("/images");
					System.out.println(productPath);
					// 创建目录
					File dirFile = new File(productPath);
					if (!dirFile.exists()) {
						dirFile.mkdirs();
					}
					// f:/tomcat/websapps/maoyan/images/a/3/123123124sda.jpg
					FileOutputStream os = new FileOutputStream(new File(productPath, realName));
					System.out.println(dirFile);
					// g.对拷流
					IOUtils.copy(is, os);
					// i.删除临时文件
					fi.delete();
					// j.将商品的路径分配到map中
					map.put(key, "images" + "/" + realName);
				}
			}
			// 封装User对象
			// form表单没有的属性要手动保存

			BeanUtils.populate(user, map);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("保存信息失败");
		}
		UserInfoService.getUserInfoService().updateuser(user, "11111111111");
		request.setAttribute("user", user);
		request.getRequestDispatcher("/profile.jsp").forward(request, response);
	}

}
