//============================
// DATA, CODE START FROM LINE 247
//============================
const DEPARTMENT = [
  "Phân hiệu đại học Thuỷ Lợi",
  "Khoa Công trình",
  "Khoa Kỹ thuật tài nguyên nước",
  "Khoa Công nghệ thông tin",
  "Khoa Cơ khí",
  "Khoa Điện - Điện tử",
  "Khoa Kinh tế và quản lý",
  "Khoa Hoá và Môi trường",
  "Trung tâm đào tạo quốc tế",
  "Khoa Lý luận chính trị",
  "Viện ĐT và KHƯD Miền Trung",
  "TTKH và triển khai KTTL",
];

const NEWS_DATA = [
  {
    img: "./img/new1.jpeg",
    title: "Thông báo tuyển sinh năm 2023 của Trường Đại học Thủy lợi",
    description: "",
    hot: true,
  },
  {
    img: "./img/new2.jpeg",
    title: "Nhiều sự ủng hộ dành cho đội bóng đá Trường ĐH Thủy lợi Nam tiến",
    hot: true,
    description:
      "Tối qua 10.3, đội bóng đá Trường ĐH Thủy lợi (Hà Nội) đã có mặt tại tp. Hồ Chí Minh, chuẩn bị cho VCK giải bóng đá Thanh Niên Sinh viên Việt Nam - Cúp Café de Măng Đen lần I - 2023.",
  },
  {
    img: "./img/new3.jpeg",
    title: "Hai anh em ruột cùng chung đội tuyển trường",
    hot: false,
    description:
      "Hai anh em ruột cùng chơi bóng đá cũng nhiều, nhưng cùng trong đội tuyển một trường ĐH, cùng thi đấu chính thức tại một giải quy mô như giải...",
  },
  {
    img: "./img/new4.jpeg",
    title: "Nước mắt rơi ở tứ kết giải bóng đá Thanh Niên Sinh viên",
    description:
      "Đội bóng đá nam sinh viên Trường Đại học Thủy lợi giành chiến thắng ở trận tứ kết 2 giải bóng đá Thanh Niên Sinh viên Việt Nam 2023, tất...",
    hot: false,
  },
  {
    img: "./img/new5.jpeg",
    title:
      "Hoàn thành Dự án OKP và Lễ tri ân GS. MARCEL STIVE, Đại học TUDELFT, Hà Lan",
    description:
      "Vừa qua, Trường Đại học Thủy lợi đã tổng kết Dự án OKP-VNM-10005 sau hơn 03 năm triển khai (2019 -2023).",
    hot: false,
  },
];
const NOTIFICATION_DATA = [
  {
    title:
      "Khảo sát ý kiến sinh viên tốt nghiệp đợt học kì 1 năm học 2022-2023 về tình hình việc làm và đánh giá các hoạt động của Nhà trường",
  },
  {
    title:
      "Hướng dẫn thực hiện miễn giảm học phí đối với sinh viên tại cơ sở Hà Nội Học kỳ II năm học 2022-2023",
  },
  {
    title:
      "Hướng dẫn thực hiện hỗ trợ học tập, hỗ trợ chi phí học tập và trợ cấp xã hội đối với sinh viên tại cơ sở Hà Nội Học kỳ II, năm học 2022 - 2023",
  },
  {
    title: "Một số thông tin phục vụ sinh hoạt lớp tháng 2&3/2023",
  },
];

const RESEARCH_DATA = [
  {
    image: "./img/training2.jpeg",
    title: "Quyết định giao đề tài cấp cơ sở năm 2023",
  },
  {
    image: "./img/training2.jpeg",
    title:
      "Báo cáo tóm tắt Hội nghị Khoa học Sinh viên lần thứ 35, tháng 6/2022",
  },
  {
    image: "./img/training2.jpeg",
    title: "DANH SÁCH ĐỀ TÀI NCKH CẤP CƠ SỞ NĂM 2022",
  },
];
const TUYEN_SINH_DATA = [
  "./img/TuyenSinhDH.jpeg",
  "./img/TuyenSinhTS.jpeg",
  "./img/TuyenSinhThacSi.jpeg",
];
const STUDENT_DATA = [
  {
    image: "./img/CurentStudent.jpeg",
    list: [
      "Lý do lựa chọn ngành Kinh tế xây dựng, Đại học Thuỷ lợi",
      "Tuyển sinh 2023: 5 lý do nên chọn ngành Kỹ thuật Xây dựng Công trình thủy​ Trường Đại học Thủy lợi",
      "Tuyển sinh 2023: Cẩm nang Ngành Tài chính - Ngân hàng (Kỳ 1)",
    ],
  },
  {
    image: "./img/FutureStudent.jpeg",
    list: [
      "Nam sinh Trường Đại học Thủy lợi đem kiến thức kỹ thuật hóa học vào các đề tài nghiên cứu",
      "Cô nàng 2K chia sẻ bí quyết rút ngắn thời gian học đại học cho các bạn sinh viên muốn ra trường sớm",
      "Chân dung nữ sinh xinh đẹp học ngành Kỹ thuật ô tô",
    ],
  },
  {
    image: "./img/Alumi.jpeg",
    list: [
      "Cựu sinh viên lớp 36N, khoa Kỹ thuật Tài nguyên nước được bầu giữ chức vụ Chủ tịch UBND huyện Bạch Thông, tỉnh Bắc Kạn",
      "“Khắc tinh” máy bay Mỹ      ",
      "Cựu sinh viên Đại học Thủy lợi trồng dưa lưới công nghệ thông minh ở Hà Tĩnh",
    ],
  },
];
const FOREIGN_AFFAIR_DATA = [
  {
    image: "./img/fa1.jpeg",
    title:
      "Hoàn thành Dự án OKP và Lễ tri ân GS. MARCEL STIVE, Đại học TUDELFT, Hà Lan",
  },
  {
    image: "./img/fa2.jpeg",
    title:
      "Trường Đại học Thủy lợi mở rộng quan hệ hợp tác với doanh nghiệp Nhật Bản",
  },
  {
    image: "./img/fa3.jpeg",
    title:
      "Trường ĐH Thủy lợi ký kết Biên bản ghi nhớ với Trường Isabela State University, Philippines",
  },
];
const TRAINING_DATA = [
  {
    image: "./img/training1.png",
    title: "Thông báo kết quả thi chuẩn tiếng Anh đầu ra (A2) đợt 1 năm 2023",
  },
  {
    image: "./img/training2.jpeg",
    title:
      "Thông tin luận án và thời gian bảo vệ luận án tiến sĩ cấp Trường của NCS Phạm Thị Thúy",
  },
  {
    image: "./img/training3.jpeg",
    title:
      "Thông báo tổ chức thi chuẩn tiếng Anh đầu ra (B1) đợt 1 năm 2023 tại Hà Nội",
  },
];
const QUICK_LINKS = [
  {
    label: "Tuyển sinh",
    icon: "./icons/tuyen_sinh.png",
  },
  {
    label: "Thông tin việc làm",
    icon: "./icons/viec_lam.png",
  },
  {
    label: "Đảm bảo chất lượng",
    icon: "./icons/quality.jpeg",
  },
  {
    label: "Tạp chí",
    icon: "./icons/www.jpeg",
  },
  {
    label: "Thư viện",
    icon: "./icons/library.jpeg",
  },
  {
    label: "TLU Mail",
    icon: "./icons/email.jpeg",
  },
  {
    label: "Lịch công tác",
    icon: "./icons/lichcongtac.jpeg",
  },
  {
    label: "Đăng ký học",
    icon: "./icons/user.jpeg",
  },
];
const HEADER_TABS = [
  {
    label: "Giới thiệu",
    children: [
      "Tổng quan",
      "Sứ mạng, tầm nhìn",
      "Cơ cấu tổ chức và nhân lực",
      "Cơ sở vật chất",
      "Công tác Đảng",
      "Công tác Đoàn",
    ],
  },
  { label: "Tin tức và thông báo", children: ["Tin tức", "Thông báo"] },
  {
    label: "Tuyển sinh",
    children: ["Đại học", "Thạc sĩ", "Tiến sĩ", "Vừa làm vừa học"],
  },
  {
    label: "Đào tạo",
    children: [
      "Thạc sĩ",
      "Đại học chính quy",
      "Cam kết đảm bảo chất lượng đào tạo",
      "Thông báo, tin tức",
      "Tiến sĩ",
      "Vừa làm vừa học",
    ],
  },
  {
    label: "Nghiên cứu",
    children: [
      "Tin học khoa học công nghệ",
      "NCKH & chuyen giao công nghệ",
      "Quỹ phát triển khoa học công nghệ",
      "Sở hữu trí tuệ",
      "Nhóm nghiên cứu mạnh",
      "Các đơn vị KHCN",
    ],
  },
  { label: "Đối ngoại" },
  { label: "Văn bản" },
  {
    label: "Sinh viên",
    children: [
      "Thông báo",
      "Hỗ trợ sinh viên",
      "Sinh viên hiện tại",
      "Hoạt động sinh viên",
      "Học phí",
      "Cựu sinh viên",
      "Sinh viên tốt nghiệp ",
      "Sinh viên tương lai",
      "Giáo viên chủ nhiệm",
    ],
  },
  { label: "Tin nội bộ" },
  { label: "Liên hệ" },
];

//============================
// COMMON
//============================
const Container = (data) => {
  const groupItem = `
  <div style="gap:10px" class="row row-cols-3 col-9 responsiveContainer">
  ${data
    .map(
      (item) =>
        `<div style="flex: 1" class="col">
          <div>
            <img width='100%' height="200px" src="${item.image}" alt="" />
          </div>
          <span class='truncate-2'>${item.title}</span>
        </div>`
    )
    .join("")}
  </div>
  `;

  const list = `
  <div style="margin-left:10px" class="col responsiveList" >
  ${data
    .map(
      (item) => `
  <li style="list-style-type: disc; border-bottom: 1px dotted #000" class='truncate-2 py-1'>${item.title}</li>
  `
    )
    .join("")}
  </div>
  `;
  return groupItem + list;
};
//============================
// HEEADERS_TOP_WITH_LOGO
//============================
document.querySelector("#head").innerHTML = `
 <div 
 class="d-flex justify-content-between gap-3 container py-3 align-items-end"
 >
<img src="./img/logo.png" width="350px" alt="" />
      <div>
        <div class="d-flex align-items-center justify-content-end gap-2 mb-2">
          <span>Login</span>
          <span>
            <img class="" src="./img/vi.jpeg" alt="" />
          </span>
          <span>
            <img class="" src="./img/en.jpeg" alt="" />
          </span>
        </div>
        <div class="input-container d-flex border border-1">
          <input type="text" class="flex-grow-1" style="border: none" />
          <button
            class=""
            style="
              background: url('./img/bgr-submit.png') top center/cover no-repeat;
              border: 1px solid #adccd8;
              color: #437b8f;
            "
          >
            Tìm
          </button>
        </div>
      </div></div>`;

//============================
// HEADER_LINKS
//============================
const navbarContainer = document.querySelector("#navbar >div");
function DefaultNav() {
  navbarContainer.innerHTML = `
${HEADER_TABS.map(
  (header) => `
          <div class="${header.children ? "dropdown dropdown-hover" : ""}">
            <button
              class="dropdown-toggle btn text-white px-3 py-2"
              type="button"
              id="dropdownMenuButton"
              data-bs-toggle="dropdown"
              aria-expanded="false"
            >
              ${header.label}
            </button>
            ${
              header?.children?.length
                ? `
                <ul
                  class="dropdown-menu"
                  aria-labelledby="dropdownMenuButton"
                  style="background-color:rgba(2,139,255,1)"
                >
                  ${header.children
                    .map(
                      (item) => `
                    <li style="cursor:pointer" class=" text-white dropdown-item px-3" >
                      >> ${item}
                    </li>
                    `
                    )
                    .join("")}
                </ul>
                `
                : ""
            }
          </div>
        `
)}
</ul>
`;
}
const handleToggleNav = () => {
  const nav = navbarContainer.querySelector("#toggleNav");
  nav.classList.toggle("d-none");
};

//============================
// QUICK LINKS
//============================

const quickLinksContainer = document.querySelector("#quicklinks");

function defaultQuickLinks() {
  quickLinksContainer.innerHTML = QUICK_LINKS.map((item) => {
    return `
    <div class='d-flex flex-column gap-2 align-items-center'>
    <span>
    <img style="height:24px" src="${item.icon}" alt="" />
    </span>
    <span>${item.label}</span>
    </div>
    `;
  }).join("");
}
//============================
// TUYEN SINH
//============================

const tuyenSinhContainer = document.querySelector("#tuyen-sinh ");

const defaultTuyenSinh = () => {
  tuyenSinhContainer.innerHTML = `
    ${TUYEN_SINH_DATA.map(
      (data) =>
        ` <span style="flex: 1 1 0; height: 200px; overflow: hidden" >
<img width='100%' src="${data}" alt="" />
</span>`
    ).join("")}
     
      `;
};

//============================
// TRAINING
//============================

const trainingContainer = document.querySelector("#training .container >div");

trainingContainer.insertAdjacentHTML("beforeend", Container(TRAINING_DATA));

//============================
// FOREIGN_AFFAIR
//============================

const foreignAffairContainer = document.querySelector(
  "#foreignAffair .container >div"
);

foreignAffairContainer.insertAdjacentHTML(
  "beforeend",
  Container(FOREIGN_AFFAIR_DATA)
);
//============================
// RESEARCH
//============================

const researchContainer = document.querySelector("#research .container >div");

researchContainer.insertAdjacentHTML("beforeend", Container(RESEARCH_DATA));
//============================
// STUDENT
//============================

const studentContainer = document.querySelector("#student .container >div");

STUDENT_DATA.forEach((item) => {
  studentContainer.insertAdjacentHTML(
    "beforeend",
    `
  <div style="flex:1">
  <span>
  <img style="margin-top:10px" width="100%" src="${item.image}" alt="" /></span>
  <div>
  ${item.list
    .map(
      (item2) => `
<li class="truncate-1 px-3 text-hover" style="list-style-type: disc">${item2}</li>`
    )
    .join("")}</div>
  </div>
  `
  );
});

// ===========================
// INFORMATION
// ===========================

const section1InformationContainer = document.querySelector(
  "#information .section-1"
);
const section2InformationContainer = document.querySelector(
  "#information .section-2"
);
const section3InformationContainer = document.querySelector(
  "#information .section-3"
);

const initialDataSection1 = NEWS_DATA[0];
function handleChangeData(initialData) {
  section1InformationContainer.innerHTML = `
<span><img width="100%" src="${initialData.img}" alt="" /></span>
<span>${initialData.title}${
    initialData.hot ? `<img src="./gif/hot.gif" alt="" />` : ""
  }</span>
${
  !!initialData.description
    ? `<span class="text-hover">${initialData.description}</span>`
    : ""
}
`;
}
handleChangeData(initialDataSection1);

function handleSetData(index) {
  handleChangeData(NEWS_DATA[index]);
}

section2InformationContainer.insertAdjacentHTML(
  "beforeend",
  `
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" style="width: 50%" role="presentation">
    <button style="width:100%" class="nav-link active" id="tin-tuc-tab" data-bs-toggle="tab" data-bs-target="#tin-tuc" type="button" role="tab" aria-controls="tin-tuc" aria-selected="true">Tin tức</button>
  </li>
  <li class="nav-item" style="width: 50%" role="presentation">
    <button style="width:100%" class="nav-link" id="thong-bao-tab" data-bs-toggle="tab" data-bs-target="#thong-bao" type="button" role="tab" aria-controls="thong-bao" aria-selected="false">Thông báo</button>
  </li>
</ul>
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="tin-tuc" role="tabpanel" aria-labelledby="tin-tuc-tab">
  
${NEWS_DATA.map(
  (item, index) => `
  <div onmousemove="handleSetData(${index})" class="text-hover truncate-2 item-hover" style="padding: 5px 0; ${
    index !== NEWS_DATA.length - 1 && "border-bottom: 1px dotted #001373"
  }">${item.title}${item.hot ? `<img src="./gif/hot.gif" alt="" />` : ""}</div>
  `
).join("")}</div>
  <div class="tab-pane fade" id="thong-bao" role="tabpanel" aria-labelledby="thong-bao-tab">
  ${NOTIFICATION_DATA.map(
    (item, index) => `
    <div class="text-hover truncate-2" style=" padding: 5px 0; ${
      index !== NOTIFICATION_DATA.length - 1 &&
      "border-bottom: 1px dotted #001373"
    }">${item.title}</div>
    `
  ).join("")}</div>
</div>
`
);

section3InformationContainer.insertAdjacentHTML(
  "beforeend",
  `
<div style="text-transform:uppercase;background-color: #e7e8f1;color:#001373; text-align: center;" class="text-hover p-2">Phân hiệu - khoa</div>
<div class="border p-1">
${DEPARTMENT.map(
  (item, index) => `
<div style=" padding: 3px 0; ${
    index !== DEPARTMENT.length - 1 && "border-bottom: 1px dotted #001373"
  }">${item}</div>
`
).join("")}
</div>
`
);

// ===========================
// FOOTER
// ===========================

const footerContainer = document.querySelector("#info-footer");

// ===========================
// RESPONSIVE
// ===========================

window.addEventListener("resize", () => {
  const windowWidth = window.innerWidth;
  if (windowWidth <= 990) {
    navbarContainer.innerHTML = `
    <div class="d-flex p-1" style="width: 100%">
      <span onclick="handleToggleNav()">
      <img src="./icons/bars.png" alt="" /></span>
      <input style="flex:1" type="text" width="100%" />
    </div>
    <div id="toggleNav" class="d-none position-absolute" style="left:0; right:0; top:40px;z-index:1 ;background-color:#2570AB" >
      ${HEADER_TABS.map(
        (item) => `
        <div class="text-white p-3">${item.label}</div>
       
        ${
          item?.children?.length
            ? item.children
                .map(
                  (item2) => `
            <div class="text-white p-3 px-5" style="background-color:#50bbff">${item2}</div>
            `
                )
                .join("")
            : ""
        }
        `
      ).join("")}
    </div>
    `;
  } else {
    DefaultNav();
  }
  if (windowWidth <= 767) {
    quickLinksContainer.innerHTML = `
    <div class="row row-cols-4">
    ${QUICK_LINKS.map((item) => {
      return `
      <div class='d-flex flex-column gap-2 align-items-center'>
      <span>
      <img style="height:24px" src="${item.icon}" alt="" />
      </span>
      <span class="text-center">${item.label}</span>
      </div>
      `;
    }).join("")}
    </div>
    `;
  } else {
    defaultQuickLinks();
  }
});

window.addEventListener("resize", () => {
  const windowWidth = window.innerWidth;

  if (windowWidth <= 990) {
    section3InformationContainer.classList.remove("col");
  } else {
    section3InformationContainer.classList.add("col");
  }
  if (windowWidth <= 767) {
    footerContainer.classList.remove("d-flex");
    section2InformationContainer.classList.remove("col");
    studentContainer.classList.remove("d-flex");
    tuyenSinhContainer.classList.remove("d-flex");
  } else {
    studentContainer.classList.add("d-flex");
    section2InformationContainer.classList.add("col");
    tuyenSinhContainer.classList.add("d-flex");

    footerContainer.classList.add("d-flex");
  }
});

//============================
// INITIAL
//============================
defaultQuickLinks();
DefaultNav();
defaultTuyenSinh();
