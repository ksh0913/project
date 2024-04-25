document.getElementById('eventForm').addEventListener('submit', async function(e) {
    e.preventDefault();

    const eventName = document.getElementById('eventName').value;
    const eventStartDate = document.getElementById('eventStartDate').value;
    const eventEndDate = document.getElementById('eventEndDate').value;
    const eventCoverImage = document.getElementById('eventCoverImage').files[0];
    const eventContentImage = document.getElementById('eventContentImage').files[0];

    if (!eventCoverImage || !eventContentImage) {
        alert('모든 이미지를 선택해주세요.');
        return; // 파일 선택 필요
    }

    try {
        const coverImageBase64 = await resizeAndEncodeImage(eventCoverImage);
        const contentImageBase64 = await getBase64(eventContentImage);

        const eventData = {
            name: eventName,
            startDate: eventStartDate,
            endDate: eventEndDate,
            coverImage: coverImageBase64,
            contentImage: contentImageBase64
        };

        const events = JSON.parse(localStorage.getItem('events') || '[]');
        events.push(eventData);
        localStorage.setItem('events', JSON.stringify(events));

        window.location.href = '/bookkkeureom/event'; // 수정된 리디렉션 경로
    } catch (error) {
        console.error('이미지 처리 중 오류 발생:', error);
        alert('이미지 처리 중 문제가 발생했습니다. 다시 시도해 주세요.');
    }
});

function getBase64(file) {
    return new Promise((resolve, reject) => {
        const reader = new FileReader();
        reader.onload = () => resolve(reader.result);
        reader.onerror = error => reject(error);
        reader.readAsDataURL(file);
    });
}

function resizeAndEncodeImage(file) {
    return new Promise((resolve, reject) => {
        const img = new Image();
        img.onload = () => {
            const canvas = document.createElement("canvas");
            const ctx = canvas.getContext("2d");
            canvas.width = 300;
            canvas.height = 167;
            ctx.drawImage(img, 0, 0, 300, 167);
            resolve(canvas.toDataURL("image/jpeg"));
        };
        img.onerror = error => reject(error);
        img.src = URL.createObjectURL(file);
    });
}

