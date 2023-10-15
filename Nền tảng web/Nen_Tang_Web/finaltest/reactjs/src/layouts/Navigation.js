import React from "react";
const data = [
  "Trang chủ",
  "Giới thiệu",
  "Đào tạo",
  "Khoa học công nghệ",
  "Hợp tác và phát triển",
  "Sinh viên",
  "Đăng ký học bổng",
  "Cán bộ",
  "Tuyển dụng",
];
const Navigation = () => {
  return (
    <div className="bg-secondary flex justify-center my-5 flex-wrap">
      {data.map((item) => (
        <div className="duration-300 hover:text-red-600 whitespace-nowrap cursor-pointer uppercase my-2 px-2.5 font-semibold text-sm border-r border-r-black leading-none">
          {item}
        </div>
      ))}
    </div>
  );
};

export default Navigation;
