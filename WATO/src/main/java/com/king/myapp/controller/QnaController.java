package com.king.myapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.king.myapp.domain.QnaBoardVO;
import com.king.myapp.domain.QnaReplyVO;
import com.king.myapp.domain.SearchCriteria;
import com.king.myapp.service.QnaBoardService;
import com.king.myapp.service.QnaReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.net.InetAddress;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/qna/*")
public class QnaController {

	private static final Logger logger = LoggerFactory.getLogger(QnaController.class);

	@Autowired
	QnaBoardService service;

	@Autowired
	QnaReplyService RepService;
	private ServletContext servletContext;


	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Model model) throws Exception {
		logger.info("get list search");
		/*
		 * service.listRank(); model.addAttribute("listRank",service.listRank());
		 */

		return "index";
	}

	// 글 목록
	@RequestMapping(value = "/getQnaList", method = RequestMethod.GET)
	public String getQnaList(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception {
		logger.info("get Qna List");
		List<QnaBoardVO> getQnaList = service.getQnaList();
		model.addAttribute("getQnaList", getQnaList);
		model.addAttribute("scri", scri);

		return "qna/qnaListPage";
	}

	// 글 읽기(디테일)
	@RequestMapping(value = "/getQnaRead/{bno}", method = RequestMethod.GET)
	public String getQnaRead(@PathVariable int bno, Model model, HttpServletResponse response) throws Exception {
		logger.info("get Qna Read");

		QnaBoardVO vo = service.getQnaRead(bno);
		model.addAttribute("getQnaRead", vo);

		List<QnaReplyVO> readReply = RepService.readReply(bno);
		model.addAttribute("repList", readReply);

		List<Map<String, Object>> fileList = service.selectFileList(vo.getQNA_BNO());
		model.addAttribute("file", fileList);

		return "qna/qnaReadPage";
	}

	// 글 수정(수정폼 받기)
	@RequestMapping(value = "/getQnaModify/{bno}", method = RequestMethod.GET)
	public String getQnaModify(@PathVariable int bno, Model model) throws Exception {
		logger.info("get Qna modify");

		QnaBoardVO vo = service.getQnaRead(bno);
		System.out.println(vo.getQNA_BNO());
		System.out.println(vo.getQNA_WRITER());
		System.out.println(vo.getQNA_TITLE());
		System.out.println(vo.getQNA_REGDATE());
		System.out.println(vo.getQNA_CONTENT());
		model.addAttribute("getQnaModify", vo);
		return "qna/qnaModifyPage";
	}

	// 글 수정(수정폼 보내기)
	@RequestMapping(value = "/postQnaModify", method = RequestMethod.POST)
	public String postQnaModify(QnaBoardVO vo) throws Exception {
		logger.info("post Qna Modify");
		service.postQnaModify(vo);

		return "redirect:/qna/getQnaRead?QNA_BNO=" + vo.getQNA_BNO();
	}

	/*
	 * //글쓰기(글쓰기 값 보내기)
	 * 
	 * @RequestMapping(value = "/postQnaWrite", method = RequestMethod.POST) public
	 * String postQnaWrite(QnaBoardVO vo, MultipartFile multipartFile,
	 * HttpServletRequest request) throws Exception{ logger.info("post Qna Write");
	 * 
	 * MultipartHttpServletRequest multi = (MultipartHttpServletRequest) request;
	 * Iterator<String> iterator = multi.getFileNames();
	 * 
	 * while (iterator.hasNext()){ multipartFile = multi.getFile(iterator.next());
	 * 
	 * if (multipartFile.isEmpty() == false){
	 * logger.info("---------------[파일 업로드 시작]---------------\n");
	 * logger.info("name : "+multipartFile.getName());
	 * logger.info("name : "+multipartFile.getName());
	 * logger.info("name : "+multipartFile.getName());
	 * logger.info("---------------[파일 업로드 끝]---------------\n");
	 * 
	 * saveFile(multipartFile); } }
	 * 
	 * service.postQnaWrite(vo, request);
	 * 
	 * return "redirect:/board/getQnaList";
	 * 
	 * 
	 * }
	 */

	// 글쓰기(글쓰기 폼 화면 이동)

	@RequestMapping(value = "/postQnaWrite", method = RequestMethod.POST)
	public String postQnaWrite(QnaBoardVO vo, @RequestParam("file") MultipartFile[] files, Model model)
			throws Exception {
		logger.info("post Qna Write");

		// Save mediaFile on system
		for (MultipartFile file : files) {
			if (!file.getOriginalFilename().isEmpty()) { // 파일 업로드가 되었다면,
				String BOARDFILE = file.getOriginalFilename();
				/*
				 * // * int Idx = BOARDFILE.lastIndexOf("."); String _BOARDFILE =
				 * BOARDFILE.substring(0,Idx); 확장자 제거하고 싶으면 이 코드 활용
				 */
				String DBFILE = BOARDFILE;
				/*
				 * String path = servletContext.getRealPath("/resource/upload"); 해당 경로로 저장하면
				 * server에 clean을 하게 되면 /resource/upload의 것들이 다 지워지게 된다. (실제서버는 이 방식으로)
				 */
				String path = "c:/upload_2020";
				System.out.println("path: " + path);

				File f = new File(path + File.separator + DBFILE);
				/*
				 * vo.setBOARDFILE(BOARDFILE); vo.setDBFILE(DBFILE);
				 */
				file.transferTo(f);
			}
			service.postQnaWrite(vo);
		}
		return "redirect:/qna/getQnaList";

	}

	// Save mediaFile on system
//   if (!file.getOriginalFilename().isEmpty()) {
//      BufferedOutputStream outputStream = new BufferedOutputStream(new FileOutputStream(
//            new File(DOWNLOAD_PATH + "/" + "fileupload", file.getOriginalFilename())));
//      outputStream.write(file.getBytes());
//      outputStream.flush();
//      outputStream.close();
//
//      model.addAttribute("msg", "File uploaded successfully.");
//   } else {
//      model.addAttribute("msg", "Please select a valid mediaFile..");
//   }
//   service.postQnaWrite(vo);
//   return "redirect:/board/getQnaList";

	// 글쓰기(글쓰기 값 보내기)
	@RequestMapping(value = "/getQnaWrite", method = RequestMethod.GET)
	public String getQnaWrite(QnaBoardVO vo) throws Exception {
		logger.info("get Qna Write");

		return "qna/qnaWritePage";
	}

	@RequestMapping(value = "/fileDown")
	public void fileDown(@RequestParam Map<String, Object> map, HttpServletResponse response) throws Exception {
		Map<String, Object> resultMap = service.selectFileInfo(map);
		String originalFileName = (String) resultMap.get("DBFILE");

		// 파일을 저장했던 위치에서 첨부파일을 읽어 byte[]형식으로 변환한다.
		byte fileByte[] = org.apache.commons.io.FileUtils
				.readFileToByteArray(new File("C:\\upload_2020\\" + originalFileName));

		response.setContentType("application/octet-stream");
		response.setContentLength(fileByte.length);
		response.setHeader("Content-Disposition",
				"attachment; fileName=\"" + URLEncoder.encode(originalFileName, "UTF-8") + "\";");
		response.getOutputStream().write(fileByte);
		response.getOutputStream().flush();
		response.getOutputStream().close();

	}

	/*
	 * private String saveFile(MultipartFile multipartFile) {
	 * 
	 * 
	 * //파일 이름 변경 UUID uuid = UUID.randomUUID(); String saveName =
	 * uuid+"_"+multipartFile.getOriginalFilename();
	 * 
	 * logger.info("saveName: {}", saveName);
	 * 
	 * //저장할 file객체 생성 //저장할 폴더 경로, 파일 이름 File saveFile = new File(UPLOAD_PATH,
	 * saveName);
	 * 
	 * try { //multipartFile.transferTO(saveFile);
	 * FileCopyUtils.copy(multipartFile.getBytes(),saveFile); } catch (IOException
	 * e) { e.printStackTrace(); return null; } return saveName; }
	 */

	// 삭제(보내기 및 받기)
	@RequestMapping(value = "/QnaDelete/{QNA_BNO}", method = RequestMethod.GET)
	public String QnaDelete(@PathVariable int QNA_BNO) throws Exception {
		logger.info("QnaDelete(post + get)");
		System.out.println("QNA_BNO : " + QNA_BNO);
		service.QnaDelete(QNA_BNO);

		return "redirect:/qna/getQnaList";
	}

	// 댓글 작성
	@RequestMapping(value = "/replyWrite/{QNA_BNO}", method = { RequestMethod.GET, RequestMethod.POST })
	public String replyWrite(@PathVariable int QNA_BNO, QnaReplyVO vo) throws Exception {
		logger.info("reply Write");

		RepService.replyWrite(vo);
		System.out.println(vo.getQNA_WRITER());
		System.out.println(vo.getQNA_RNO());
		System.out.println(vo.getQNA_REGDATE());
		System.out.println(vo.getQNA_CONTENT());
		System.out.println(vo.getQNA_BNO());

		return "redirect:/qna/getQnaRead?QNA_BNO=" + QNA_BNO;

	}

	// 댓글 수정 POST
	@RequestMapping(value = "/replyUpdate/{bno}", method = RequestMethod.POST)
	public String replyUpdate(@PathVariable int QNA_BNO, QnaReplyVO vo) throws Exception {

		logger.info("reply update");
		System.out.println("vo.getQNA_BNO() : " + vo.getQNA_BNO());
		System.out.println("vo.getRno() : " + vo.getQNA_RNO());
		System.out.println("vo.getQNA_CONTENT() : " + vo.getQNA_CONTENT());

		RepService.replyUpdate(vo);

		return "redirect:/qna/getQnaRead?QNA_BNO=" + QNA_BNO;

	}
	/*
	 * //댓글 수정 GET
	 * 
	 * @RequestMapping(value = "/replyUpdate", method = RequestMethod.GET) public
	 * void getReplyUpate(@RequestParam("rno")int rno, Model model) throws
	 * Exception{ logger.info("get reply update");
	 * 
	 * QnaReplyVo vo = null;
	 * 
	 * vo = RepService. }
	 */

	// 댓글 삭제
	@RequestMapping(value = "/replyDelete/{QNA_BNO}/{QNA_RNO}", method = RequestMethod.GET)
	public String replyDelete(@PathVariable int QNA_BNO, @PathVariable int QNA_RNO, QnaReplyVO vo) throws Exception {
		logger.info("reply Delete");

		RepService.replyDelete(QNA_RNO);

		System.out.println(vo.getQNA_BNO());
		System.out.println(vo.getQNA_CONTENT());
		System.out.println(vo.getQNA_REGDATE());
		System.out.println(vo.getQNA_RNO());
		System.out.println(vo.getQNA_WRITER());

		return "redirect:/qna/getQnaRead?QNA_RNO=" + QNA_BNO;

	}

	@PostMapping(value = "/image", produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String 썸머노트_이미지_업로드(MultipartHttpServletRequest request) throws Exception {

		// 01. 멀티 파트 파일에 불러온 파일을 담기
		MultiValueMap<String, MultipartFile> multiValueMap = request.getMultiFileMap();
		List<MultipartFile> list = multiValueMap.get("file");
		MultipartFile multipartFile = list.get(0);

		// 02. 파일 전송
		String webappRoot = request.getServletContext().getRealPath("/"); // 웹 루트 경로
		// 일반경로는 위 경로에서 => ../../src/main/webapp/

		// 03. 저장 폴더 설정
		String boardImgDir = "../webapp/resource/file"; // 저장 폴더명
		System.out.println("저장경로 : " + webappRoot + boardImgDir);

		// 04. 파일명을 현재시간으로 저장
		String fileOrignalName = multipartFile.getOriginalFilename(); // 파일의 원본이름

		String extenstion = fileOrignalName.substring(fileOrignalName.lastIndexOf(".")); // 참고: commons.io 에는 확장자를 뽑아내는
																							// getExtenstion 함수가 있음
		String fileName = System.currentTimeMillis() + extenstion;

		// 04-1 원본파일명 - 공백제거
		// String fileName = fileOrignalName.replaceAll(" ", "_"); // 저장과 다운로드 되는 이름

		// 05. 해당 폴더에 파일 생성
		File file = new File(webappRoot + boardImgDir + fileName);
		multipartFile.transferTo(file);

		// 06. 뿌려줄 주소를 담음
		String localIp = InetAddress.getLocalHost().getHostAddress();
		System.out.println("http://" + localIp + ":" + request.getServerPort() + boardImgDir + fileName);

		// 07. 웹 이미지 주소를 뿌려주어 파일이미지가 나올 수 있도록 해줌
		return "http://" + localIp + ":" + request.getServerPort() + "/" + boardImgDir + fileName;
	}
	/*
	 * @Override public void setServletContext(ServletContext servletContext) {
	 * this.servletContext = servletContext; }
	 */
}
