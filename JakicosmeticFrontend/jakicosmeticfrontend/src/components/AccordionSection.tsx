import React, { useState } from "react";

type AccordionSectionProps = {
  title: string;
  iconSrc: string;
  subtitle?: string;
  defaultOpen?: boolean;
  children: React.ReactNode;
};

export default function AccordionSection({
  title,
  iconSrc,
  subtitle,
  defaultOpen = true,
  children,
}: AccordionSectionProps) {
  const [open, setOpen] = useState(defaultOpen);

  return (
    <section className="px-5">
      <div className="flex flex-col gap-5 rounded-3xl bg-white px-5 py-[30px]">
        <div className="flex items-center justify-between">
          <div className="flex items-center gap-[10px]">
            <img
              src={iconSrc}
              alt="icon"
              className="size-[38px] shrink-0"
            />
            <div className="flex flex-col gap-1">
              <h3 className="font-semibold text-[#0C0422]">{title}</h3>
              {subtitle && (
                <p className="text-sm leading-[21px] text-[#8C8582]">
                  {subtitle}
                </p>
              )}
            </div>
          </div>
          <button
            type="button"
            onClick={() => setOpen((prev) => !prev)}
            className={`shrink-0 transition-transform duration-300 ${
              open ? "rotate-180" : ""
            }`}
          >
            <img
              src="/assets/images/icons/bottom.svg"
              alt="toggle"
              className="size-6 shrink-0"
            />
          </button>
        </div>

        {open && (
          <div className="flex flex-col gap-5">
            <div className="box h-[1px] w-full" />
            {children}
          </div>
        )}
      </div>
    </section>
  );
}
