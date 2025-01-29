package springmvcsearch;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.http.HttpSession;

@Controller
public class FileUploadController {
	
	@RequestMapping("/fileform")
	public String showUploadForm() {
		return "fileform"; // Removed NullPointerException-causing code
	}
	
	@RequestMapping(value = "/uploadimage", method = RequestMethod.POST)
	public String fileUpload(@RequestParam("profile") MultipartFile file, HttpSession s, Model m) throws IOException {
		
		System.out.println(file.getSize());
		System.out.println(file.getContentType());
		System.out.println(file.getName());

		// Prevent errors for empty files
		if (file.isEmpty()) {
			m.addAttribute("msg", "File is empty, please select a valid file.");
			return "filesuccess";
		}
		
		// Get the byte data 
		byte[] data = file.getBytes();
		String path = s.getServletContext().getRealPath("/") + "WEB-INF" + File.separator + "resources" + File.separator + "image";
		
		// Ensure directory exists
		File directory = new File(path);
		if (!directory.exists()) {
			directory.mkdirs();
		}

		File uploadFile = new File(path + File.separator + file.getOriginalFilename());

		try (FileOutputStream fos = new FileOutputStream(uploadFile)) {
			fos.write(data);
			System.out.println("File Uploaded");
			m.addAttribute("msg", "Uploaded successfully!!");
			m.addAttribute("filename", file.getOriginalFilename());
		} catch (IOException e) {
			e.printStackTrace();
			System.out.println("Uploading error");
			m.addAttribute("msg", "Uploading error..!");
		}
		
 		return "filesuccess";
	}
}
