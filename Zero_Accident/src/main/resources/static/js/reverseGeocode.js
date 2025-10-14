// ================================
// reverseGeocode.js
// 재사용 가능한 역지오코딩 유틸
// Kakao Maps JS SDK(services) 필요
// ================================

// 1) 수준(레벨) 열거형 비슷하게
const AddressLevel = Object.freeze({
  SIDO: 'SIDO',           // "전라남도"
  SIGUNGU: 'SIGUNGU',     // "전라남도 순천시"
  DONG: 'DONG',           // "전라남도 순천시 조례동"
  JIBUN: 'JIBUN',         // "전라남도 순천시 조례동 18-2"
  ROAD_FULL: 'ROAD_FULL', // 도로명 전체 (없으면 지번 대체)
});

// 2) 내부: 안전하게 문자열 뽑기
function safe(v) {
  return (v === undefined || v === null) ? '' : String(v).trim();
}

// 3) 내부: 공백 조인
function joinSpace(...parts) {
  return parts.filter(p => !!p && String(p).trim().length > 0)
              .map(p => String(p).trim())
              .join(' ');
}

// 4) 핵심: 위경도 -> 주소 요소 얻기 (Promise 반환)
//  Kakao JS에서는 (lng, lat) 순서로 넣는다!
function getAddressComponents(lat, lon) {
  return new Promise((resolve) => {
    const geocoder = new kakao.maps.services.Geocoder();

    // coord2Address(lng, lat, callback)
    geocoder.coord2Address(lon, lat, function(result, status) {
      if (status !== kakao.maps.services.Status.OK || !result || result.length === 0) {
        // 실패하거나 결과 없음 -> 최소 행정구역(시도/시군구/동)만이라도 얻기 위해 coord2RegionCode 호출
        geocoder.coord2RegionCode(lon, lat, function(r2, s2) {
          if (s2 === kakao.maps.services.Status.OK && r2 && r2.length > 0) {
            const top = r2[0];
            resolve({
              sido:   safe(top.region_1depth_name),
              sigungu:safe(top.region_2depth_name),
              dong:   safe(top.region_3depth_name),
              mainNo: '',
              subNo:  '',
              roadAddress: ''
            });
          } else {
            resolve({
              sido:'', sigungu:'', dong:'', mainNo:'', subNo:'', roadAddress:''
            });
          }
        });
        return;
      }

      // result[0].address (지번), result[0].road_address (도로명, 없을 수 있음)
      const jibun = result[0].address || {};
      const road  = result[0].road_address || {};

      resolve({
        sido:   safe(jibun.region_1depth_name),
        sigungu:safe(jibun.region_2depth_name),
        dong:   safe(jibun.region_3depth_name),
        mainNo: safe(jibun.main_address_no),
        subNo:  safe(jibun.sub_address_no),
        roadAddress: safe(road.address_name)
      });
    });
  });
}

// 5) 포매터: 원하는 수준으로 문자열 만들기
function formatAddress(components, level) {
  const { sido, sigungu, dong, mainNo, subNo, roadAddress } = components;
  const base_sido = joinSpace(sido);
  if (level === AddressLevel.SIDO) return base_sido;

  const base_sigungu = joinSpace(base_sido, sigungu);
  if (level === AddressLevel.SIGUNGU) return base_sigungu;

  const base_dong = joinSpace(base_sigungu, dong);
  if (level === AddressLevel.DONG) return base_dong;

  if (level === AddressLevel.JIBUN) {
    const no = subNo ? `${mainNo}-${subNo}` : mainNo;
    return joinSpace(base_dong, no);
  }

  if (level === AddressLevel.ROAD_FULL) {
    if (roadAddress) return roadAddress;                // 도로명 있으면 그대로
    const no = subNo ? `${mainNo}-${subNo}` : mainNo;   // 없으면 지번으로 대체
    return joinSpace(base_dong, no);
  }

  // 기본 fallback
  return base_dong;
}

// 6) 외부에 공개하는 메인 함수
// 사용법: reverseGeocode(lat, lon, AddressLevel.DONG).then(addr => {...})
function reverseGeocode(lat, lon, level = AddressLevel.DONG) {
  return getAddressComponents(lat, lon).then(comp => formatAddress(comp, level));
}

// 7) 전역 노출 (JSP 어디서든 쓰게)
window.AddressLevel = AddressLevel;
window.reverseGeocode = reverseGeocode;
