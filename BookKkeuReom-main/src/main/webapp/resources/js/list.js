document.addEventListener('DOMContentLoaded', function() {
    const events = JSON.parse(localStorage.getItem('events') || '[]');
    // displayEvents(events); // 초기 이벤트 목록 표시 제거

    document.getElementById('showActive').addEventListener('click', function() {
        displayEvents(events.filter(event => new Date(event.endDate) >= new Date()));
        setActiveButton(this);
    });

    document.getElementById('showCompleted').addEventListener('click', function() {
        displayEvents(events.filter(event => new Date(event.endDate) < new Date()));
        setActiveButton(this);
    });

    function displayEvents(filteredEvents) {
        const eventListElement = document.getElementById('eventList');
        eventListElement.innerHTML = ''; // 이벤트 목록 초기화

        filteredEvents.forEach((event, index) => {
            const li = document.createElement('li');
            li.className = "list-group-item d-flex flex-column align-items-start";

			            const coverImg = document.createElement('img');
			coverImg.src = event.coverImage || '/path/to/your/default.jpg';
			coverImg.alt = '표지사진';
			coverImg.className = 'cover-img'; // 클래스 이름을 'cover-img'로 지정
			coverImg.onerror = () => { coverImg.src = '/path/to/your/default.jpg'; };
			coverImg.onclick = () => navigateToDetail(event);


            const title = document.createElement('h5');
            title.textContent = event.name;
            title.className = "mt-2";
            title.onclick = () => navigateToDetail(event);

            const dates = document.createElement('p');
            dates.textContent = `${event.startDate} ~ ${event.endDate}`;
            dates.className = "text-muted mb-2";

            const deleteButton = document.createElement('button');
            deleteButton.textContent = '삭제';
            deleteButton.className = 'btn btn-danger mt-2';
            deleteButton.onclick = () => {
                if (confirm('이 이벤트를 삭제하시겠습니까?')) {
                    events.splice(index, 1);
                    localStorage.setItem('events', JSON.stringify(events));
                    eventListElement.removeChild(li);
                }
            };

            li.appendChild(coverImg);
            li.appendChild(title);
            li.appendChild(dates);
            li.appendChild(deleteButton);
            eventListElement.appendChild(li);
        });
    }

    /// list.js
function navigateToDetail(event) {
    localStorage.setItem('currentEvent', JSON.stringify(event));
    window.location.href = '/bookkkeureom/event_details'; // 확장자 .jsp 제거
}


// list.js 또는 event_register.js에 추가할 데이터 저장 코드
function saveEventDetails() {
    const eventName = document.getElementById('eventName').value;
    const eventStartDate = document.getElementById('eventStartDate').value;
    const eventEndDate = document.getElementById('eventEndDate').value;
    const eventOrganization = document.getElementById('eventOrganization').value; // 기관 이름
    const additionalImage = document.getElementById('additionalImage').files[0]; // 추가 사진

    const event = {
        name: eventName,
        startDate: eventStartDate,
        endDate: eventEndDate,
        organization: eventOrganization,
        additionalImage: getBase64(additionalImage) // 추가 이미지를 Base64로 인코딩
    };

    localStorage.setItem('currentEvent', JSON.stringify(event));
    window.location.href = 'event_details.jsp';
}





    function setActiveButton(activeButton) {
        document.querySelectorAll('.btn-group .btn').forEach(btn => {
            btn.classList.remove('active');
            btn.style.color = 'black'; // 비활성 상태 글자색 검정
            btn.style.borderColor = '#ccc'; // 비활성 상태 테두리 연한 회색
        });
        activeButton.classList.add('active');
        activeButton.style.color = '#f25252';
        activeButton.style.borderColor = '#f25252';
    }

    // 페이지 로드 시 '진행' 버튼 자동 클릭
    document.getElementById('showActive').click();
});
