import { useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import { z, type ZodIssue } from "zod";
import { viewBookingSchema } from "../types/validationBooking";
import apiClient from "../services/apiServices";

type FormData = {
  email: string;
  booking_trx_id: string;
};

export default function MyOrdersPages() {
  const [formData, setFormData] = useState<FormData>({
    email: "",
    booking_trx_id: "",
  });
  const [formErrors, setFormErrors] = useState<ZodIssue[]>([]);
  const [loading, setLoading] = useState(false);
  const navigate = useNavigate();

  const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const { name, value } = e.target;

    setFormData((prev) => ({
      ...prev,
      [name]: value,
    }));
  };

  const handleSubmit = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();

    const validation = viewBookingSchema.safeParse(formData);

    if (!validation.success) {
      setFormErrors(validation.error.issues);
      return;
    }

    setFormErrors([]);
    setLoading(true);

    try {
      const response = await apiClient.post("/check-booking", formData);
      console.log("FULL API RESPONSE:", response.data);
      
      if (response.status === 200 && response.data?.data) {
        navigate("/my-booking", {
          state: {
            bookingDetails: response.data.data,
            notFound: false,
          },
        });
      } else {
        navigate("/my-booking", {
          state: {
            bookingDetails: null,
            notFound: true,
          },
        });
      }
    } catch (err) {
      console.error("Error checking booking:", err);
      navigate("/my-booking", {
        state: {
          bookingDetails: null,
          notFound: true,
        },
      });
    } finally {
      setLoading(false);
    }
  };

  const getFieldError = (field: keyof FormData) => {
    const error = formErrors.find((err) => err.path.includes(field));
    return error ? error.message : "";
  };

  return (
    <main className="relative mx-auto flex min-h-screen max-w-[640px] flex-col gap-5 bg-[#F6F6F8] pb-[162px]">
      <div id="Background" className="absolute left-0 right-0 top-0">
        <img
          src="/assets/images/backgorunds/cosmetic-equipment.png"
          alt="background"
          className="h-[421px] w-full object-cover object-bottom"
        />
      </div>

      <div className="mt-[155px] flex flex-col gap-[30px] px-5">
        <header className="relative flex flex-col gap-1">
          <img
            src="/assets/images/icons/car-black.svg"
            alt="icon"
            className="mx-auto size-[70px] shrink-0"
          />
          <h1 className="text-center text-[26px] font-bold leading-[39px]">
            Track Your Orders
          </h1>
          <p className="text-center text-cosmetics-grey">
            Gunakan informasi di bawah agar anda dapat melihat status
            pemesanannya
          </p>
        </header>

        <form id="Information" className="relative" onSubmit={handleSubmit}>
          <div className="flex w-full flex-col gap-5 rounded-3xl bg-white px-[14px] py-5">
            {/* Booking TRX ID */}
            <label className="flex flex-col gap-[6px]">
              <h4 className="font-semibold text-[#030504]">Booking TRX ID</h4>
              <div className="group relative flex h-[54px] items-center justify-center rounded-full bg-[#E0E0EC] transition-all duration-300 focus-within:bg-cosmetics-gradient-purple-pink">
                <input
                  type="text"
                  name="booking_trx_id"
                  value={formData.booking_trx_id}
                  onChange={handleChange}
                  className="absolute h-[calc(100%_-_2px)] w-[calc(100%_-_2px)] rounded-full bg-[#F6F6F8] pl-[57px] pr-[13px] font-semibold text-[#030504] transition-all duration-300 placeholder:font-normal placeholder:leading-[24px] placeholder:text-[#ACACB9] focus:h-[calc(100%_-_4px)] focus:w-[calc(100%_-_4px)] focus:outline-none"
                  placeholder="Enter your Booking ID"
                  disabled={loading}
                />
                <div className="absolute left-[14px] top-1/2 flex w-[35px] -translate-y-1/2 justify-between">
                  <img
                    src="/assets/images/icons/booking-trx-id.svg"
                    alt="icon"
                    className="size-[24px] shrink-0"
                  />
                  <span className="h-[26px] w-px bg-[#E0E0EC] transition-all duration-300 group-focus-within:bg-cosmetics-gradient-purple-pink" />
                </div>
              </div>
              {getFieldError("booking_trx_id") && (
                <p className="text-sm leading-[21px] text-[#E70011]">
                  {getFieldError("booking_trx_id")}
                </p>
              )}
            </label>

            {/* Email Address */}
            <label className="flex flex-col gap-[6px]">
              <h4 className="font-semibold text-[#030504]">Email Address</h4>
              <div className="group relative flex h-[54px] items-center justify-center rounded-full bg-[#E0E0EC] transition-all duration-300 focus-within:bg-cosmetics-gradient-purple-pink">
                <input
                  type="email"
                  name="email"
                  value={formData.email}
                  onChange={handleChange}
                  className="absolute h-[calc(100%_-_2px)] w-[calc(100%_-_2px)] rounded-full bg-[#F6F6F8] pl-[57px] pr-[13px] font-semibold text-[#030504] transition-all duration-300 placeholder:font-normal placeholder:leading-[24px] placeholder:text-[#ACACB9] focus:h-[calc(100%_-_4px)] focus:w-[calc(100%_-_4px)] focus:outline-none"
                  placeholder="Write your complete email"
                  disabled={loading}
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

            <button
              type="submit"
              disabled={loading}
              className="flex w-full items-center justify-center rounded-full bg-cosmetics-gradient-pink-white py-[14px] font-semibold text-white transition-all duration-300 hover:shadow-[0px_6px_22px_0px_#FF4D9E82] disabled:opacity-50 disabled:cursor-not-allowed"
            >
              {loading ? "Searching..." : "Find My Booking"}
            </button>
          </div>
        </form>
      </div>

      {/* Bottom Navigation */}
      <nav className="fixed bottom-0 left-0 right-0 z-30 mx-auto w-full">
        <div className="mx-auto max-w-[640px]">
          <div className="h-[89px] bg-white px-[30px] shadow-[0px_-4px_30px_0px_#1107260D]">
            <ul className="flex justify-between">
              <li className="flex items-center">
                <Link to={`/`}>
                  <div className="flex w-[50px] flex-col items-center gap-1">
                    <img
                      src="/assets/images/icons/browse-black.svg"
                      alt="Browse"
                      className="size-6 shrink-0"
                    />
                    <p className="text-sm leading-[21px]">Browse</p>
                  </div>
                </Link>
              </li>
              <li className="flex items-center">
                <Link to={`/check-booking`}>
                  <div className="flex w-[50px] flex-col items-center gap-1">
                    <img
                      src="/assets/images/icons/car-pink.svg"
                      alt="Orders"
                      className="size-6 shrink-0"
                    />
                    <p className="text-sm font-semibold leading-[21px] text-cosmetics-pink">
                      Orders
                    </p>
                  </div>
                </Link>
              </li>
              <li>
                <a href="#" className="relative -top-[23px]">
                  <div className="relative flex h-[80px] w-[80px] items-center justify-center rounded-full bg-[#F5F5F7]">
                    <div className="flex size-[65px] items-center justify-center rounded-full bg-cosmetics-gradient-pink-white transition-shadow duration-300 hover:shadow-[0px_6px_10px_0px_#FF4D9E6E]">
                      <img
                        src="/assets/images/icons/video.svg"
                        alt="Video"
                        className="size-[30px] shrink-0"
                      />
                    </div>
                  </div>
                </a>
              </li>
              <li className="flex items-center">
                <a
                  href="#"
                  className="flex w-[50px] flex-col items-center gap-1"
                >
                  <img
                    src="/assets/images/icons/gift.svg"
                    alt="Perks"
                    className="size-6 shrink-0"
                  />
                  <p className="text-sm leading-[21px]">Perks</p>
                </a>
              </li>
              <li className="flex items-center">
                <a
                  href="#"
                  className="flex w-[50px] flex-col items-center gap-1"
                >
                  <img
                    src="/assets/images/icons/message.svg"
                    alt="Help"
                    className="size-6 shrink-0"
                  />
                  <p className="text-sm leading-[21px]">Helps</p>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </main>
  );
}
