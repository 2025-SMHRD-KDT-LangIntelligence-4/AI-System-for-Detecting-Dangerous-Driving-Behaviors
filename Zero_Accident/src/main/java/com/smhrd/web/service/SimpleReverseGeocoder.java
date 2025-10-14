package com.smhrd.web.service;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.*;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import java.util.*;

@Component
public class SimpleReverseGeocoder {

    private final RestTemplate rest = new RestTemplate();

    // application.properties에 저장해둔 카카오 REST API 키 불러오기
    @Value("${kakao.rest-key}")
    private String kakaoKey;

    // 좌표 -> 사람이 읽는 주소로 바꾸기
    public String reverse(double lat, double lon) {
        try {
            String url = "https://dapi.kakao.com/v2/local/geo/coord2address.json?y=" + lat + "&x=" + lon;

            HttpHeaders headers = new HttpHeaders();
            headers.set("Authorization", "KakaoAK " + kakaoKey);
            HttpEntity<Void> entity = new HttpEntity<>(headers);

            ResponseEntity<Map> response = rest.exchange(url, HttpMethod.GET, entity, Map.class);
            Map body = response.getBody();
            if (body == null) return null;

            List docs = (List) body.get("documents");
            if (docs == null || docs.isEmpty()) return null;

            Map first = (Map) docs.get(0);
            Map road = (Map) first.get("road_address");
            Map addr = (Map) first.get("address");

            String display = null;
            if (road != null && road.get("address_name") != null) {
                display = road.get("address_name").toString();
            } else if (addr != null && addr.get("address_name") != null) {
                display = addr.get("address_name").toString();
            }

            return display; // 예: "서울특별시 강남구 테헤란로 151"
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
