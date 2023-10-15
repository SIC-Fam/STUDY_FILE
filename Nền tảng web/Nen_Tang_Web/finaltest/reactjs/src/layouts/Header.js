import React from "react";
import logo from "../images/logo.png";
const data = [
  "Tài nguyên số",
  "Học liệu số",
  "Thư viện",
  "Văn bản",
  "E-mail",
  "Liên hệ",
  "Sitemap",
];
const Header = () => {
  return (
    <div className="flex justify-between">
      <div className="w-[350px]">
        <img width="100%" src={logo} alt="" />
      </div>
      <div className="text-right flex flex-col justify-between">
        <div className="bg-primary inline-flex p-1 text-white gap-3 rounded-bl-[10px]">
          {data.map((item) => (
            // eslint-disable-next-line jsx-a11y/anchor-is-valid
            <a
              href={item === "E-mail" ? "/login" : "#"}
              className="font-semibold text-sm px-3"
            >
              {item}
            </a>
          ))}
        </div>
        <div className="text-primary text-sm pr-3">
          <span>ENGLISH</span>
        </div>
        <div className="flex gap-1 justify-end pr-3">
          <input
            className="outline-none w-full max-w-[300px] p-1 border border-black"
            type="text"
            placeholder="Nhập thông tin cần tìm: tuyển sinh, đào tạo..."
          />
          <span className="bg-primary text-white p-1">Tìm kiếm</span>
        </div>
      </div>
    </div>
  );
};

export default Header;
