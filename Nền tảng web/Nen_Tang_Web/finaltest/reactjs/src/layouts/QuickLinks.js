import React from "react";
const data1 = [
  "Kênh hỗ trợ tiểu học",
  "Cơ sở hoà lạc",
  "Bản tin DHQG",
  "Tạp chí khoa học",
];
const QuickLinks = () => {
  return (
    <div className="grid grid-cols-3 gap-1 text-sm">
      <div className="col-span-2 flex gap-1 justify-between">
        {data1.map((item) => (
          <div className="p-2 hover:text-red-600 duration-300 cursor-pointer rounded-bl-[10px] bg-gray-200 w-full text-center text-gray-700 font-semibold uppercase text-sm">
            {item}
          </div>
        ))}
      </div>
      <div className="p-2 hover:text-red-600 duration-300 cursor-pointer rounded-bl-[10px] bg-gray-200 w-full text-center text-gray-700 font-semibold uppercase text-sm">
        ĐẢm bảo chất lượng
      </div>
    </div>
  );
};

export default QuickLinks;
