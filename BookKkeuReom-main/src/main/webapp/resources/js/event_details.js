document.addEventListener('DOMContentLoaded', function() {
    const storedEvent = localStorage.getItem('currentEvent');
    console.log('Loaded event data:', storedEvent); // 이 로그를 통해 데이터 로드 상태 확인

    const event = JSON.parse(storedEvent || '{}'); // 로드된 데이터가 없을 경우 빈 객체로 처리

    if (event && event.startDate && event.endDate) {
        document.getElementById('eventDates').textContent = `${event.startDate} ~ ${event.endDate}`;
        if (event.contentImage) {
            document.getElementById('eventDetailImage').src = event.contentImage;
        } else {
            console.log('Content image is missing');
            document.getElementById('eventDetailImage').src = '/path/to/default/image.jpg'; // 기본 이미지 경로 설정
        }
    } else {
        console.error('No valid event data available or invalid event data in localStorage');
        document.getElementById('eventDates').textContent = '날짜 정보 없음';
        document.getElementById('eventDetailImage').src = '/path/to/default/image.jpg'; // 기본 이미지 경로 설정
    }
});
