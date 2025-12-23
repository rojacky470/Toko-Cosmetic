import React, { useEffect, useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import { z, type ZodIssue } from "zod";
import type { BookingFormData } from "../types/type";

const bookingSchema = z.object({
  name: z.string().min(1, "Name is required"),
  email: z.string().email("Invalid email"),
  phone: z.string().min(1, "Phone number is required"),
  post_code: z.string().min(1, "Post code is required"),
  address: z.string().min(1, "Address is required"),
  city: z.string().min(1, "City is required"),
});

export default function BookingPages() {
  const [formData, setFormData] = useState<BookingFormData>({
    name: "",
    email: "",
    phone: "",
    post_code: "",
    address: "",
    city: "",
  });

  const [formErrors, setFormErrors] = useState<ZodIssue[]>([]);
  const navigate = useNavigate();

  useEffect(() => {
    const savedData = localStorage.getItem("bookingData");
    const cartData = localStorage.getItem("cart");

    if (!cartData || JSON.parse(cartData).length === 0) {
      navigate("/");
      return;
    }

    if (savedData) {
      setFormData(JSON.parse(savedData));
    }
  }, [navigate]);

  const handleChange = (
    e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>
  ) => {
    const { name, value } = e.target;

    setFormData((prev) => ({
      ...prev,
      [name]: value,
    }));
  };

  const getFieldError = (field: string) =>
    formErrors.find((err) => err.path?.includes(field))?.message;

  const handleSubmit = (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();

    const validation = bookingSchema.safeParse(formData);

    if (!validation.success) {
      setFormErrors(validation.error.issues);
      return;
    }

    setFormErrors([]);
    localStorage.setItem("bookingData", JSON.stringify(formData));
    navigate("/payment");
  };

  return (
    <main className="mx-auto flex min-h-screen max-w-[640px] flex-col gap-5 bg-[#F6F6F8] pb-[20px]">
      {/* NAV TOP */}
      <section id="NavTop">
        <div className="px-5">
          <div className="mt-5 flex w-full flex-col gap-5 rounded-3xl bg-white pb-[44px] pt-3">
            <div className="relative">
              <Link to="/cart">
                <div className="absolute left-3 top-1/2 flex size-[44px] shrink-0 -translate-y-1/2 items-center justify-center rounded-full border border-cosmetics-greylight">
                  <img
                    src="/assets/images/icons/left.svg"
                    alt="icon"
                    className="size-5 shrink-0"
                  />
                </div>
              </Link>
              <div className="flex flex-col gap-[2px]">
                <h1 className="text-center text-lg font-bold leading-[27px]">
                  Booking
                </h1>
                <p className="text-center text-sm leading-[21px] text-cosmetics-grey">
                  Data asli harus diberikan amet
                </p>
              </div>
            </div>

            {/* ProgressBar kamu taruh di sini */}
          </div>
        </div>
      </section>

      {/* START BOOKING HEADER */}
      <header>
        <div className="flex flex-col gap-1 px-5">
          <h2 className="text-[26px] font-bold leading-[39px]">
            Start Booking
          </h2>
          <p className="text-cosmetics-grey">
            Data asli harus diberikan amet
          </p>
        </div>
      </header>

      {/* FORM */}
      <div>
        <form onSubmit={handleSubmit} className="flex flex-col gap-5 px-5">
          {/* INFORMATIONS */}
          <section id="Informations">
            <div className="flex flex-col gap-5 rounded-3xl bg-white px-[14px] py-5">
              <div className="flex items-center gap-[10px]">
                <img
                  src="/assets/images/icons/information.svg"
                  alt="icon"
                  className="size-[38px] shrink-0"
                />
                <div className="flex flex-col gap-1">
                  <h3 className="font-semibold text-[#030504]">Informations</h3>
                  <p className="text-sm leading-[21px] text-[#43484C]">
                    Input correct lorem data
                  </p>
                </div>
              </div>

              <div className="box h-[1px] w-full" />

              {/* Full Name */}
              <label className="flex flex-col gap-[6px]">
                <h4 className="font-semibold text-[#030504]">Full Name</h4>
                <div className="group relative flex h-[54px] items-center justify-center rounded-full bg-[#E0E0EC] transition-all duration-300 focus-within:bg-cosmetics-gradient-purple-pink">
                  <input
                    type="text"
                    name="name"
                    value={formData.name}
                    onChange={handleChange}
                    placeholder="Enter your full name"
                    className="absolute h-[calc(100%_-_2px)] w-[calc(100%_-_2px)] rounded-full bg-[#F6F6F8] pl-[57px] pr-[13px] font-semibold text-[#030504] transition-all duration-300 placeholder:font-normal placeholder:leading-[24px] placeholder:text-[#ACACB9] focus:h-[calc(100%_-_4px)] focus:w-[calc(100%_-_4px)] focus:outline-none"
                  />
                  <div className="absolute left-[14px] top-1/2 flex w-[35px] -translate-y-1/2 justify-between">
                    <img
                      src="/assets/images/icons/profil.svg"
                      alt="icon"
                      className="size-[24px] shrink-0"
                    />
                    <span className="h-[26px] w-px bg-[#E0E0EC] transition-all duration-300 group-focus-within:bg-cosmetics-gradient-purple-pink" />
                  </div>
                </div>
                {getFieldError("name") && (
                  <p className="text-sm leading-[21px] text-[#E70011]">
                    {getFieldError("name")}
                  </p>
                )}
              </label>

              {/* Phone */}
              <label className="flex flex-col gap-[6px]">
                <h4 className="font-semibold text-[#030504]">Phone</h4>
                <div className="group relative flex h-[54px] items-center justify-center rounded-full bg-[#E0E0EC] transition-all duration-300 focus-within:bg-cosmetics-gradient-purple-pink">
                  <input
                    type="tel"
                    name="phone"
                    value={formData.phone}
                    onChange={handleChange}
                    placeholder="Enter your phone"
                    className="absolute h-[calc(100%_-_2px)] w-[calc(100%_-_2px)] rounded-full bg-[#F6F6F8] pl-[57px] pr-[13px] font-semibold text-[#030504] transition-all duration-300 placeholder:font-normal placeholder:leading-[24px] placeholder:text-[#ACACB9] focus:h-[calc(100%_-_4px)] focus:w-[calc(100%_-_4px)] focus:outline-none"
                  />
                  <div className="absolute left-[14px] top-1/2 flex w-[35px] -translate-y-1/2 justify-between">
                    <img
                      src="/assets/images/icons/phone.svg"
                      alt="icon"
                      className="size-[24px] shrink-0"
                    />
                    <span className="h-[26px] w-px bg-[#E0E0EC] transition-all duration-300 group-focus-within:bg-cosmetics-gradient-purple-pink" />
                  </div>
                </div>
                {getFieldError("phone") && (
                  <p className="text-sm leading-[21px] text-[#E70011]">
                    {getFieldError("phone")}
                  </p>
                )}
              </label>

              {/* Email */}
              <label className="flex flex-col gap-[6px]">
                <h4 className="font-semibold text-[#030504]">Email Address</h4>
                <div className="group relative flex h-[54px] items-center justify-center rounded-full bg-[#E0E0EC] transition-all duration-300 focus-within:bg-cosmetics-gradient-purple-pink">
                  <input
                    type="email"
                    name="email"
                    value={formData.email}
                    onChange={handleChange}
                    placeholder="Write your complete email"
                    className="absolute h-[calc(100%_-_2px)] w-[calc(100%_-_2px)] rounded-full bg-[#F6F6F8] pl-[57px] pr-[13px] font-semibold text-[#030504] transition-all duration-300 placeholder:font-normal placeholder:leading-[24px] placeholder:text-[#ACACB9] focus:h-[calc(100%_-_4px)] focus:w-[calc(100%_-_4px)] focus:outline-none"
                  />
                  <div className="absolute left-[14px] top-1/2 flex w-[35px] -translate-y-1/2 justify-between">
                    <img
                      src="/assets/images/icons/mail.svg"
                      alt="icon"
                      className="size-[24px] shrink-0"
                    />
                    <span className="h-[26px] w-px bg-[#E0E0EC] transition-all duration-300 group-focus-within:bg-cosmetics-gradient-purple-pink" />
                  </div>
                </div>
                {getFieldError("email") && (
                  <p className="text-sm leading-[21px] text-[#E70011]">
                    {getFieldError("email")}
                  </p>
                )}
              </label>
            </div>
          </section>

          {/* SHIPPING TO */}
          <section id="ShippingTo">
            <div className="flex flex-col gap-5 rounded-3xl bg-white px-[14px] py-5">
              <div className="flex items-center gap-[10px]">
                <img
                  src="/assets/images/icons/shippingto.svg"
                  alt="icon"
                  className="size-[38px] shrink-0"
                />
                <div className="flex flex-col gap-1">
                  <h3 className="font-semibold text-[#030504]">Shipping to</h3>
                  <p className="text-sm leading-[21px] text-[#43484C]">
                    Input correct lorem data
                  </p>
                </div>
              </div>

              <div className="box h-[1px] w-full" />

              {/* City */}
              <label className="flex flex-col gap-[6px]">
                <h4 className="font-semibold text-[#030504]">City</h4>
                <div className="group relative flex h-[54px] items-center justify-center rounded-full bg-[#E0E0EC] transition-all duration-300 focus-within:bg-cosmetics-gradient-purple-pink">
                  <input
                    type="text"
                    name="city"
                    value={formData.city}
                    onChange={handleChange}
                    placeholder="Enter your city"
                    className="absolute h-[calc(100%_-_2px)] w-[calc(100%_-_2px)] rounded-full bg-[#F6F6F8] pl-[57px] pr-[13px] font-semibold text-[#030504] transition-all duration-300 placeholder:font-normal placeholder:leading-[24px] placeholder:text-[#ACACB9] focus:h-[calc(100%_-_4px)] focus:w-[calc(100%_-_4px)] focus:outline-none"
                  />
                  <div className="absolute left-[14px] top-1/2 flex w-[35px] -translate-y-1/2 justify-between">
                    <img
                      src="/assets/images/icons/city.svg"
                      alt="icon"
                      className="size-[24px] shrink-0"
                    />
                    <span className="h-[26px] w-px bg-[#E0E0EC] transition-all duration-300 group-focus-within:bg-cosmetics-gradient-purple-pink" />
                  </div>
                </div>
                {getFieldError("city") && (
                  <p className="text-sm leading-[21px] text-[#E70011]">
                    {getFieldError("city")}
                  </p>
                )}
              </label>

              {/* Address */}
              <label className="flex flex-col gap-[6px]">
                <h4 className="font-semibold text-[#030504]">Address</h4>
                <div className="group relative flex h-[130px] items-center justify-center rounded-3xl bg-[#E0E0EC] transition-all duration-300 focus-within:bg-cosmetics-gradient-purple-pink">
                  <textarea
                    name="address"
                    value={formData.address}
                    onChange={handleChange}
                    placeholder="Write your complete address"
                    className="absolute h-[calc(100%_-_2px)] w-[calc(100%_-_2px)] resize-none rounded-3xl bg-[#F6F6F8] pl-[57px] pr-[13px] pt-[13px] font-semibold text-[#030504] transition-all duration-300 placeholder:font-normal placeholder:leading-[24px] placeholder:text-[#ACACB9] focus:h-[calc(100%_-_4px)] focus:w-[calc(100%_-_4px)] focus:rounded-[22px] focus:outline-none"
                  />
                  <div className="absolute left-[14px] top-[13px] flex w-[35px] justify-between">
                    <img
                      src="/assets/images/icons/apartment.svg"
                      alt="icon"
                      className="size-[24px] shrink-0"
                    />
                    <span className="h-[26px] w-px bg-[#E0E0EC] transition-all duration-300 group-focus-within:bg-cosmetics-gradient-purple-pink" />
                  </div>
                </div>
                {getFieldError("address") && (
                  <p className="text-sm leading-[21px] text-[#E70011]">
                    {getFieldError("address")}
                  </p>
                )}
              </label>

              {/* Post Code */}
              <label className="flex flex-col gap-[6px]">
                <h4 className="font-semibold text-[#030504]">Post Code</h4>
                <div className="group relative flex h-[54px] items-center justify-center rounded-full bg-[#E0E0EC] transition-all duration-300 focus-within:bg-cosmetics-gradient-purple-pink">
                  <input
                    type="text"
                    name="post_code"
                    value={formData.post_code}
                    onChange={handleChange}
                    placeholder="Write your post code"
                    className="absolute h-[calc(100%_-_2px)] w-[calc(100%_-_2px)] rounded-full bg-[#F6F6F8] pl-[57px] pr-[13px] font-semibold text-[#030504] transition-all duration-300 placeholder:font-normal placeholder:leading-[24px] placeholder:text-[#ACACB9] focus:h-[calc(100%_-_4px)] focus:w-[calc(100%_-_4px)] focus:outline-none"
                  />
                  <div className="absolute left-[14px] top-1/2 flex w-[35px] -translate-y-1/2 justify-between">
                    <img
                      src="/assets/images/icons/location.svg"
                      alt="icon"
                      className="size-[24px] shrink-0"
                    />
                    <span className="h-[26px] w-px bg-[#E0E0EC] transition-all duration-300 group-focus-within:bg-cosmetics-gradient-purple-pink" />
                  </div>
                </div>
                {getFieldError("post_code") && (
                  <p className="text-sm leading-[21px] text-[#E70011]">
                    {getFieldError("post_code")}
                  </p>
                )}
              </label>
            </div>
          </section>

          {/* BUTTON SUBMIT */}
          <button
            type="submit"
            className="mt-[10px] flex w-full items-center justify-between rounded-full bg-cosmetics-gradient-pink-white px-5 py-[14px] transition-all duration-300 hover:shadow-[0px_6px_22px_0px_#FF4D9E82]"
          >
            <strong className="font-semibold text-white">
              Continue to Payment
            </strong>
            <img
              src="/assets/images/icons/right.svg"
              alt="icon"
              className="size-[24px] shrink-0"
            />
          </button>
        </form>
      </div>
    </main>
  );
}
