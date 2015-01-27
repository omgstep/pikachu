function save() {
		var f = document.writeForm;
		var fullfile = f.file.value;
		var arr = fullfile.split("\\");
		var filename = arr[arr.length - 1];
		var title = f.title.value;
		var content = f.content.value;
		if (title =="" || title.length > 25) {
			alert("제목은 필수입력사항이며 25글자 미만으로 입력하셔야합니다.");
			f.title.focus();
			return false;
		} else if (content == "" || content.length > 250) {
			alert("내용은 필수입력사항이며 250글자 미만으로 입력하셔야합니다.");
			f.content.focus();
			return false
		}else if (filename.length > 20) {
			alert("파일 이름이 너무 깁니다.");
			return false
		} else {
			f.submit();
			return;
		}

	}