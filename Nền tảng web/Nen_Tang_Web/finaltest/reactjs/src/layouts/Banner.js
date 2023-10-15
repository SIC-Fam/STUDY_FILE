import React from "react";
import bannerBig from "../images/banner1.png";
import banner2 from "../images/banner2.png";
const dvitvien = [
  "Trường đại học thành niên",
  "Trường, Khoa trực thuộc",
  "Viện nghiên cứu",
  "Trung tâm đào tạo, nghiên cứu",
  "Đơn vị phục vụ",
];

const Banner = () => {
  return (
    <div className="grid grid-cols-3 gap-1">
      <div className="col-span-2">
        <img width="100%" src={bannerBig} alt="" />
      </div>
      <div className="col-span-1">
        <div className="uppercase text-white bg-red-600 p-5 text-sm font-semibold">
          <span>Các đơn vị và thành viên trực thuộc</span>
          <div className="p-3.5 px-4">
            {dvitvien.map((item) => (
              <li>{item}</li>
            ))}
          </div>
        </div>
        <div className="grid">
          <img width='100%' src={banner2} alt="" />
        </div>
      </div>
    </div>
  );
};

export default Banner;
