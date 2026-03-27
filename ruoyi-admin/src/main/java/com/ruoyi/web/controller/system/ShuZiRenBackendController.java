package com.ruoyi.web.controller.system;

import com.ruoyi.common.annotation.Anonymous;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;
import java.util.Enumeration;

@Slf4j
@RestController
@Anonymous
@RequestMapping("/shuziren")
public class ShuZiRenBackendController {

    @Autowired
    private RestTemplate restTemplate;

    /**
     * 转发请求到 Python 接口
     *
     * @param request HttpServletRequest
     * @return ResponseEntity
     */
    @RequestMapping("/**")
    public ResponseEntity<?> forwardRequest(HttpServletRequest request, @RequestBody(required = false) String body) {
        // 获取原始请求的 URL 和方法
        String requestURI = request.getRequestURI();
        //判断url是否包含login,如何是则调用本地的登录接口
        if (requestURI.contains("/login")) {
            String localLoginUrl = "http://localhost:18081/api/login/third"; // 替换为本地登录接口的 URL
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_JSON); // 设置 Content-Type
            HttpEntity<String> entity = new HttpEntity<>(body, headers);
            return restTemplate.postForEntity(localLoginUrl, entity, String.class);
        }
        //判断url是否包含java,如果是则调用本地的java接口
        if (requestURI.contains("/java")) {
            String localJavaUrl = "http://localhost:18081" + requestURI.replaceFirst("/shuziren/java", "/api"); // 替换为本地Java接口的 URL
            HttpHeaders headers = new HttpHeaders();
            Enumeration<String> headerNames = request.getHeaderNames();
            while (headerNames.hasMoreElements()) {
                String headerName = headerNames.nextElement();
                headers.add(headerName, request.getHeader(headerName));
            }
            HttpEntity<String> entity = new HttpEntity<>(body, headers);
            return restTemplate.postForEntity(localJavaUrl, entity, String.class);
        }
        //将/shuziren 替换为空
        requestURI = requestURI.replaceFirst("/shuziren", "");
        String method = request.getMethod();

        // 拼接目标 Python 接口的 URL
        String pythonBaseUrl = "http://127.0.0.1:8000"; // 替换为 Python 服务的基础 URL
        String targetUrl = pythonBaseUrl + requestURI;
        // 设置请求头
        HttpHeaders headers = new HttpHeaders();
        Enumeration<String> headerNames = request.getHeaderNames();
        while (headerNames.hasMoreElements()) {
            String headerName = headerNames.nextElement();
            headers.add(headerName, request.getHeader(headerName));
        }

        // 创建请求实体
        HttpEntity<String> entity = new HttpEntity<>(body, headers);

        // 根据请求方法转发请求
        ResponseEntity<String> response;
        switch (method) {
            case "GET":
                response = restTemplate.exchange(targetUrl, HttpMethod.GET, entity, String.class);
                break;
            case "POST":
                response = restTemplate.exchange(targetUrl, HttpMethod.POST, entity, String.class);
                break;
            case "PUT":
                response = restTemplate.exchange(targetUrl, HttpMethod.PUT, entity, String.class);
                break;
            case "DELETE":
                response = restTemplate.exchange(targetUrl, HttpMethod.DELETE, entity, String.class);
                break;
            default:
                return ResponseEntity.status(HttpStatus.METHOD_NOT_ALLOWED).body("Method not supported");
        }

        return response;
    }
}
