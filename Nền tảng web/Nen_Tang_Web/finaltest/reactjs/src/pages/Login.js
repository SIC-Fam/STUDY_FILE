import React from "react";
import user from "../images/user.png";
import password from "../images/password.png";
import * as Yup from "yup";
import { yupResolver } from "@hookform/resolvers/yup";
import { useForm } from "react-hook-form";
const Login = () => {
  const schema = Yup.object({
    username: Yup.string()
      .required("Đây là 1 trường bắt buộc")
      .matches(
        /^(?!.*[!@#$%^&*()\\[\]{}.,\-_+=~`|:;"'<>/?0-9])/,
        "Tên đăng nhập chỉ có thể chứa chữ, không bao gồm số và kí tự đặc biệt"
      ),
    password: Yup.string()
      .required("Đây là 1 trường bắt buộc")
      .min(8, "Mật khẩu tối thiểu 8 kí tự")
      .matches(
        /^(?!.*[!@#$%^&*()\\[\]{}.,\-_+=~`|:;"'<>/?])(?=.*\d)(?=.*[a-z])(?=.*[A-Z])/,
        "Bao gồm chữ hoa, chữ thường và số"
      ),
  }).required();
  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm({
    resolver: yupResolver(schema),
  });

  const onSubmit = (values) => {
    alert("Bạn đã đăng nhập thành công")
  };
  return (
    <div className="bg-blue-100 h-screen flex flex-col items-center justify-center">
      <p className="font-semibold text-xl uppercase text-primary">
        Đăng nhập hệ thống
      </p>
      <p className="border border-black rounded-3xl px-3 py-1 my-2">
        Tiếng việt
      </p>
      <div className="bg-white rounded-lg p-3 flex flex-col gap-2">
        <span>Tên đăng nhập</span>
        <div className="overflow-hidden h-10 flex border border-gray-200 rounded-sm">
          <img className="h-10" src={user} alt="" />
          <input
            type="text"
            className="outline-none pl-2 w-[300px]"
            {...register("username")}
          />
        </div>
        {!!errors.username?.message && (
          <div className="text-sm bg-[#f9e4e8] text-[#e04562] p-2">
            {errors.username?.message}
          </div>
        )}
        <span>Mật khẩu</span>
        <div className="overflow-hidden h-10 flex border border-gray-200 rounded-sm">
          <img className="h-10" src={password} alt="" />
          <input
            type="text"
            className="outline-none pl-2 w-[300px]"
            {...register("password")}
          />
        </div>
        {!!errors.password?.message && (
          <div className="text-sm bg-[#f9e4e8] text-[#e04562] p-2">
            {errors.password?.message}
          </div>
        )}
        <div className="text-sm flex items-center justify-between my-2">
          <div>
            <input type="checkbox" />
            <span>Ghi nhớ</span>
          </div>
          <p className="text-red-500">Quên mật khẩu?</p>
        </div>
        <button
          onClick={handleSubmit(onSubmit)}
          className="bg-primary p-3 rounded-sm"
        >
          Đăng nhập
        </button>
      </div>
    </div>
  );
};

export default Login;
