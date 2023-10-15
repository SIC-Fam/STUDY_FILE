const carierList = [
  "Cung cấp nước",
  "Cung cấp thuốc, dịch vụ cho bệnh viện",
  "Bưu chính viễn thông",
  "Môi trường đô thị",
  "Doanh nghiệp bình ổn giá",
  "Doanh nghiệp xăng dầu ",
  "Dịch vụ ngân hàng, hành chính",
  "Vận tải, logistic",
  "Doanh nghiệp xúc tiến thương mại ",
  "Doanh nghiệp công nghiệp",
  "Du lịch",
  "Doanh nghiệp cơ sở kinh doanh lương thực thực phẩm ",
  "Các cơ sở sản xuất",
  "Doanh nghiệ sản xuất phần mềm",
  "Khác",
];

const carierContainer = document.querySelector("#carier");
const guildContainer = document.querySelector("#guild");
carierContainer.innerHTML = carierList
  .map(
    (item, index) => `
    <div class='option'>
      <input type="radio" name='carier' value=${item} />
      <label htmlFor="">${index + 1}) ${item}</label>
    </div>
      `
  )
  .join("");

guildContainer.innerHTML = Array.from([
  1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
])
  .map(
    (item) => `
      <div class='item' key=${item}>
          <input type="radio" name='guild' value='Phường ${item}' />
          <label htmlFor="">Phường ${item}</label>
      </div>
    `
  )
  .join("");

const form = document.forms["form"];
function removeError(container) {
  const classToRemove = `.error.${container.id}`;
  document.querySelector(classToRemove)?.remove();
}

function addError(container, message = "Đây là 1 trường bắt buộc") {
  const classError = `error ${container.id}`;

  if (!document.querySelector(`.${classError.replace(" ", ".")}`)) {
    container.insertAdjacentHTML(
      "beforebegin",
      `<div class='${classError}'>${message}</div>`
    );
  }
}

function submitForm() {
  let check = true;
  const carierContainer = document.getElementById("carier");

  const guildContainer = document.getElementById("guild");

  const carierValue = document.querySelector("input[name='carier']:checked");

  const guildValue = document.querySelector("input[name='guild']:checked");

  const tenDonVi = form["tenDonVi"].value;

  const msthue = form["msthue"].value;

  const address = form["address"].value;

  const district = form["district"].value;

  const employAmount = form["employAmount"].value;

  const amountVaccinated = form["amountVaccinated"].value;

  const amountAgreed = form["amountAgreed"].value;

  const fullName = form["fullName"].value;

  const phoneNumber = form["phoneNumber"].value;

  const email = form["email"].value;

  if (!tenDonVi) {
    addError(form["tenDonVi"]);
    check = false;
  } else {
    removeError(form["tenDonVi"]);
  }

  if (!msthue) {
    addError(form["msthue"]);
    check = false;
  } else {
    removeError(form["msthue"]);
  }

  if (!address) {
    addError(form["address"]);
    check = false;
  } else {
    removeError(form["address"]);
  }

  if (!district) {
    addError(form["district"]);
    check = false;
  } else {
    removeError(form["district"]);
  }

  if (!employAmount) {
    addError(form["employAmount"]);
    check = false;
  } else {
    removeError(form["employAmount"]);
    if (!Number.isInteger(employAmount) || employAmount < 0) {
      addError(form["employAmount"], "Không hợp lệ");
      check = false;
    }
  }

  if (!amountVaccinated) {
    addError(form["amountVaccinated"]);
    check = false;
  } else {
    removeError(form["amountVaccinated"]);
    if (!Number.isInteger(amountVaccinated) || amountVaccinated < 0) {
      addError(form["amountVaccinated"], "Không hợp lệ");
      check = false;
    }
  }

  if (!amountAgreed) {
    addError(form["amountAgreed"]);
    check = false;
  } else {
    removeError(form["amountAgreed"]);
    if (!Number.isInteger(amountAgreed) || amountAgreed < 0) {
      addError(form["amountAgreed"], "Không hợp lệ");
      check = false;
    }
  }

  if (!fullName) {
    addError(form["fullName"]);
    check = false;
  } else {
    removeError(form["fullName"]);
  }

  if (!phoneNumber) {
    addError(form["phoneNumber"]);
    check = false;
  } else {
    removeError(form["phoneNumber"]);
    if (/^0+[0-9]{9}$/.test(phoneNumber) === false) {
      addError(form["phoneNumber"], "Số điện thoại không hợp lệ");
    }
  }

  if (!email) {
    addError(form["email"]);
    check = false;
  } else {
    removeError(form["email"]);
    if (!/.+@([a-z]{1,20}).com/.test(email)) {
      addError(form["email"], "Email không hợp lệ");
      check = false;
    }
  }

  if (!carierValue) {
    addError(carierContainer);
    check = false;
  } else {
    removeError(carierContainer);
  }

  if (!guildValue) {
    addError(guildContainer);
    check = false;
  } else {
    removeError(guildContainer);
  }

  if (check) {
    alert("Gui thong tin thanh cong");
  }

  return check;
}
