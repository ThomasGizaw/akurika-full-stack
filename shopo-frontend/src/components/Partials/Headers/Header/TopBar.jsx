import Link from "next/link";
import { useEffect, useState } from "react";
import ServeLangItem from "../../../Helpers/ServeLangItem";
import Arrow from "../../../Helpers/icons/Arrow";
import Selectbox from "../../../Helpers/Selectbox";
import { hasCookie, setCookie, getCookie, deleteCookie } from "cookies-next";
export default function TopBar({
  className,
  contact,
  topBarProps,
  languagesApi,
}) {
  const { allCurrency, defaultCurrency, handler } = topBarProps;
  const [auth, setAuth] = useState(null);
  useEffect(() => {
    setAuth(JSON.parse(localStorage.getItem("auth")));
  }, []);

  // language part

  const languages = languagesApi;
  const [selectedLang, setSelectedLang] = useState(
    languages && languages.length > 0 ? languages[0] : null
  );
  useEffect(() => {
    let addScript = document.createElement("script");
    addScript.setAttribute(
      "src",
      "//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"
    );
    document.body.appendChild(addScript);
    window.googleTranslateElementInit = googleTranslateElementInit;
  }, []);

  const googleTranslateElementInit = () => {
    new window.google.translate.TranslateElement(
      {
        pageLanguage: "auto",
        autoDisplay: false,
      },
      "google_translate_element"
    );
  };
  useEffect(() => {
    if (languages && languages.length > 0) {
      if (hasCookie("googtrans")) {
        const getCode = getCookie("googtrans").replace("/auto/", "");
        const findItem = languages.find((item) => item.lang_code === getCode);
        setSelectedLang(findItem);
        if (getCode === "ar" || getCode === "he") {
          document.body.setAttribute("dir", "rtl");
        } else {
          document.body.setAttribute("dir", "ltr");
        }
      } else {
        setSelectedLang(languages[0]);
        if (
          languages[0].lang_code === "ar" ||
          languages[0].lang_code === "he"
        ) {
          document.body.setAttribute("dir", "rtl");
        } else {
          document.body.setAttribute("dir", "ltr");
        }
      }
    }
  }, [languages]);
  const setCookieHandlerAction = (lang_code) => {
    // Get the current hostname
    const currentDomain = window.location.hostname;
    // Determine if the current domain is a subdomain
    const isSubdomain = currentDomain.split(".").length >= 2;
    const cookieDomain = isSubdomain ? `.${currentDomain}` : currentDomain;
    // Set the cookie
    setCookie("googtrans", `/auto/${lang_code}`, {
      path: "/",
      domain: `${cookieDomain}`, // Use the appropriate domain
      secure: false,
    });
    if (currentDomain !== "localhost") {
      deleteCookie("googtrans", `${currentDomain}`);
      if (currentDomain.split(".").length === 3) {
        const dotDomain = currentDomain.split(".").slice(1, 3).join(".");
        setCookie("googtrans", `/auto/${lang_code}`, {
          path: "/",
          domain: `${dotDomain}`, // Use the appropriate domain
          secure: false,
        });
      }
    }
  };
  const langChange = (value) => {
    setCookieHandlerAction(value.lang_code);
    setSelectedLang(value);
    setTimeout(() => {
      window.location.reload();
    }, 2000);
  };
  return (
    <>
      <div
        className={`w-full bg-white h-10 border-b border-qgray-border ${
          className || ""
        }`}
      >
        <div className="container-x mx-auto h-full">
          <div className="flex justify-between items-center h-full">
            <div className="topbar-nav">
              <ul className="flex space-x-6">
                <li className={`rtl:ml-6 ltr:ml-0`}>
                  {auth ? (
                    <Link href="/profile#dashboard" passHref>
                      <a rel="noopener noreferrer">
                        <span className="text-xs leading-6 text-qblack font-500 cursor-pointer">
                          {ServeLangItem()?.Account}
                        </span>
                      </a>
                    </Link>
                  ) : (
                    <Link href="/login" passHref>
                      <a rel="noopener noreferrer">
                        <span className="text-xs leading-6 text-qblack font-500 cursor-pointer">
                          {ServeLangItem()?.Account}
                        </span>
                      </a>
                    </Link>
                  )}
                </li>
                <li>
                  <Link href="/tracking-order" passHref>
                    <a rel="noopener noreferrer">
                      <span className="text-xs leading-6 text-qblack font-500 cursor-pointer">
                        {ServeLangItem()?.Track_Order}
                      </span>
                    </a>
                  </Link>
                </li>
              </ul>
            </div>
            <div className="topbar-dropdowns lg:block hidden">
              <div className="flex ltr:space-x-6 rtl:-space-x-0 items-center">
                <div className="flex ltr:space-x-2 rtl:space-x-0 items-center rtl:ml-2 ltr:ml-0">
                  <span className={`rtl:ml-2 ltr:ml-0`}>
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      fill="none"
                      viewBox="0 0 24 24"
                      strokeWidth="1.5"
                      stroke="currentColor"
                      className="w-4 h-4"
                    >
                      <path
                        strokeLinecap="round"
                        strokeLinejoin="round"
                        d="M10.5 1.5H8.25A2.25 2.25 0 006 3.75v16.5a2.25 2.25 0 002.25 2.25h7.5A2.25 2.25 0 0018 20.25V3.75a2.25 2.25 0 00-2.25-2.25H13.5m-3 0V3h3V1.5m-3 0h3m-3 18.75h3"
                      />
                    </svg>
                  </span>
                  <span className="text-xs text-qblack font-500 leading-none rtl:ml-2 ltr:ml-0 ">
                    {contact && contact.phone}
                  </span>
                </div>
                <div className="flex ltr:space-x-2 rtl:space-x-0 items-center ">
                  <span className={`rtl:ml-2 ltr:ml-0`}>
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      fill="none"
                      viewBox="0 0 24 24"
                      strokeWidth="1.5"
                      stroke="currentColor"
                      className="w-4 h-4"
                    >
                      <path
                        strokeLinecap="round"
                        strokeLinejoin="round"
                        d="M21.75 6.75v10.5a2.25 2.25 0 01-2.25 2.25h-15a2.25 2.25 0 01-2.25-2.25V6.75m19.5 0A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25m19.5 0v.243a2.25 2.25 0 01-1.07 1.916l-7.5 4.615a2.25 2.25 0 01-2.36 0L3.32 8.91a2.25 2.25 0 01-1.07-1.916V6.75"
                      />
                    </svg>
                  </span>
                  <span className="text-xs text-qblack font-500 leading-none">
                    {contact && contact.email}
                  </span>
                </div>
                <div className="language-select flex space-x-1 items-center notranslate">
                  <Selectbox
                    action={langChange}
                    defaultValue={selectedLang && selectedLang.name}
                    className="w-fit"
                    datas={
                      languages &&
                      languages.length > 0 &&
                      languages.map((item) => ({
                        ...item,
                        name: item.lang_name,
                      }))
                    }
                  />
                  <Arrow className="fill-current qblack" />
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </>
  );
}
