import axios from "axios";
import { initializeApp } from 'firebase/app';
import { useRouter } from "next/router";
import Script from "next/script";
import { useContext, useEffect, useState } from "react";
import { useDispatch, useSelector } from "react-redux";
import { toast } from "react-toastify";
import apiRequest from "../../../utils/apiRequest";
import auth from "../../../utils/auth";
import hexToRgb from "../../../utils/hexToRgb";
import languageModel from "../../../utils/languageModel";
import settings from "../../../utils/settings";
import { fetchCart } from "../../store/Cart";
import { fetchCompareProducts } from "../../store/compareProduct";
import { setupAction } from "../../store/websiteSetup";
import { fetchWishlist } from "../../store/wishlistData";
import LoginWidget from "../Auth/Login/LoginWidget";
import SignupWidget from "../Auth/Signup/SignupWidget";
import VerifyWidget from "../Auth/Signup/VerifyWidget";
import LoginContext from "../Contexts/LoginContext";
import Consent from "../Helpers/Consent";
import ServeLangItem from "../Helpers/ServeLangItem";
import MessageWidget from "../MessageWidget";
import { firebaseCloudMessaging } from '/firebaseConfig';

import TawkMessengerReact from '@tawk.to/tawk-messenger-react';

export default function DefaultLayout({ children }) {
  useEffect(() => {
    setToken()
    // this is working
    if ('serviceWorker' in navigator) {
      navigator.serviceWorker.addEventListener('message', (event) => {
        console.log(event);
       const {title,body}=event.data?.firebaseMessagingData?.notification;
       const options = {
        body:body
      };
       new Notification(title, options);

      })
    }

    async function setToken() {
      try {
        const token = await firebaseCloudMessaging.init()
        if (token) {
          apiRequest
              .pushNotification(auth().access_token, {
                user_id: auth().user.id,
                device_token: token,
              })
              .then((res) => {
                console.log(res.data[0]);
              })
              .catch((err) => {
                console.log(err);
              });
          // not working
          // getMessage()
        }
      } catch (error) {
        console.log(error)
      }
    }
    
  },[])
// not working
  function getMessage() {
    const messaging = initializeApp().messaging()
    console.log(messaging)
    messaging.onMessage((message) => {
      console.log(message)
      const title = message.notification.title;
      const options = {
        body: message.notification.body
      };
      new Notification(title, options);
    })
  }



  const router = useRouter();
  const dispatch = useDispatch();
  const getLoginContexts = useContext(LoginContext);
  const { websiteSetup } = useSelector((state) => state.websiteSetup);
  const [twkData, setTwkData] = useState(null);
  const [gtagId, setgTagId] = useState(null);
  const [fbPixexl, setFbPixel] = useState(null);
  const [load, setLoad] = useState(true);
  const [popupView, setPopupView] = useState("login");
  const [messageWid, setMessageWid] = useState(null);
  const apiFetch = () => {
    axios
      .get(`${process.env.NEXT_PUBLIC_BASE_URL}api/website-setup`)
      .then((res) => {
        // currency
        const {currencies} = res.data;
        const getDefaultCurrency = currencies && currencies.length>0 ? currencies.find((item)=>item.is_default==='Yes' || item.is_default==='yes') :{};
        if(!localStorage.getItem("shopoDefaultCurrency")){
          localStorage.setItem("shopoDefaultCurrency", JSON.stringify(getDefaultCurrency));
        }

        // handle success
        dispatch(setupAction(res.data));
        localStorage.setItem(
          "settings",
          JSON.stringify(res.data && res.data.setting)
        );
        localStorage.setItem(
          "pusher",
          JSON.stringify(
            res.data && res.data.pusher_info ? res.data.pusher_info : null
          )
        );

        if (res.data) {
          setgTagId(res.data.googleAnalytic.analytic_id);
          setTwkData({
            widgetId: res.data.tawk_setting.widget_id,
            propertyId: res.data.tawk_setting.property_id,
          });
          setFbPixel(res.data.facebookPixel);
          localStorage.setItem("language", JSON.stringify(res.data.language));
          const checkDefaultExists = localStorage.getItem("language") && localStorage.getItem("shopoDefaultCurrency");
          if (checkDefaultExists) {
            setLoad(false);
            if (!messageWid) {
              if (localStorage.getItem("pusher")) {
                const pusher = JSON.parse(localStorage.getItem("pusher"));
                setMessageWid(pusher);
              }
            }
          }
        }
      })
      .catch((error) => {
        // handle error
        console.log(error);
      });
    dispatch(fetchWishlist());
  };
  useEffect(() => {
    !websiteSetup ? apiFetch() : false;
    dispatch(fetchCart());
    dispatch(fetchCompareProducts());
    const themeColor = JSON.parse(localStorage.getItem("settings"));
    if (themeColor) {
      const root = document.querySelector(":root");
      if (themeColor.theme_one && themeColor.theme_two) {
        root.style.setProperty(
          "--primary-color",
          `${hexToRgb(themeColor.theme_one)}`
        );
        root.style.setProperty(
          "--secondary-color",
          `${hexToRgb(themeColor.theme_two)}`
        );
      }
    }
    if (languageModel()) {
      setLoad(false);
    }
  }, [websiteSetup, apiFetch, dispatch]);
  useEffect(() => {
    if (fbPixexl) {
      import("react-facebook-pixel")
        .then((x) => x.default)
        .then((ReactPixel) => {
          ReactPixel.init(`${fbPixexl.app_id}`); // facebookPixelId
          ReactPixel.pageView();

          router.events.on("routeChangeComplete", () => {
            ReactPixel.pageView();
          });
        });
    }
  }, [fbPixexl, router.events]);
  const { text_direction, enable_multivendor } = settings();
  useEffect(() => {
    const html = document.getElementsByTagName("html");
    html[0].dir = text_direction;
  });
  // components actions
  const loginActionPopup = () => {
    setPopupView("signup");
  };
  const notVerifyHandler = () => {
    setPopupView("verify");
  };
  const signupActionPopup = () => {
    setPopupView("login");
  };
  const singupActionHandle = () => {
    setPopupView("verify");
  };
  const verifyActionPopup = () => {
    setPopupView("login");
  };

  useEffect(() => {
    if (getLoginContexts.loginPopup === false) {
      setPopupView("login");
      if (auth()) {
        const holdData = JSON.parse(localStorage.getItem("data-hold"));
        if (holdData && holdData.type === "add-to-cart") {
          if (holdData.variants) {
            const variantQuery = holdData.variants.map((value, index) => {
              return value ? `variants[]=${value}` : `variants[]=-1`;
            });
            const variantString = variantQuery
              .map((value) => value + "&")
              .join("");
            const itemsQuery = holdData.variantItems.map((value, index) => {
              return value ? `items[]=${value}` : `items[]=-1`;
            });
            const itemQueryStr = itemsQuery
              .map((value) => value + "&")
              .join("");
            const uri = `token=${auth().access_token}&product_id=${
              holdData.id
            }&${variantString}${itemQueryStr}quantity=${holdData.quantity}`;
            apiRequest
              .addToCard(uri)
              .then((res) => {
                toast.success(ServeLangItem()?.Item_added);
                localStorage.removeItem("data-hold");
                router.push("/cart");
              })
              .catch((err) => {
                console.log(err);
                toast.error(
                  err.response &&
                    err.response.data.message &&
                    err.response.data.message
                );
              });
            dispatch(fetchCart());
          } else {
            const uri = `token=${auth().access_token}&product_id=${
              holdData.id
            }&quantity=${holdData.quantity}`;
            apiRequest
              .addToCard(uri)
              .then((res) => {
                toast.success(ServeLangItem()?.Item_added);
                localStorage.removeItem("data-hold");
                router.push("/cart");
              })
              .catch((err) => {
                console.log(err);
                toast.error(
                  err.response &&
                    err.response.data.message &&
                    err.response.data.message
                );
              });
            dispatch(fetchCart());
          }
        }
      }
    }
  }, [dispatch, getLoginContexts.loginPopup]);

  return (
    <>
      {gtagId && (
        <>
          <Script
            src={`https://www.googletagmanager.com/gtag/js?id=${gtagId}`}
            strategy="afterInteractive"
          />
          <Script id="google-analytics" strategy="afterInteractive">
            {`
          window.dataLayer = window.dataLayer || [];
          function gtag(){window.dataLayer.push(arguments);}
          gtag('js', new Date());

          gtag('config', '${gtagId}');
        `}
          </Script>
        </>
      )}
      <div className={`relative`}>
        <div>
          {!load && children ? (
            <div>
              <Consent />
              <div>{children}</div>
              {twkData && (
                  <TawkMessengerReact
                      propertyId={twkData.widgetId}
                      widgetId={twkData.propertyId}/>
              )}

              {getLoginContexts.loginPopup && (
                <div
                  className={
                    "w-full h-screen fixed left-0 top-0 flex justify-center items-center z-40"
                  }
                >
                  <div className="w-full h-full fixed left-0 top-0 bg-black bg-opacity-50"></div>
                  <div
                    data-aos="fade-up"
                    className={`lg:w-[572px] w-full lg:h-[670px] h-full bg-white flex flex-col justify-center sm:p-10 p-5 border border-[#E0E0E0] relative z-40`}
                  >
                    <div
                      onClick={() => getLoginContexts.handlerPopup(false)}
                      className="absolute right-5 top-5 cursor-pointer"
                    >
                      <svg
                        viewBox="0 0 54 54"
                        fill="none"
                        className="cursor-pointer md:w-[54px] md:h-[54px] w-[30px] h-[30px]"
                        xmlns="http://www.w3.org/2000/svg"
                      >
                        <path
                          d="M26.9399 53.9996C12.0678 53.9827 -0.0210736 41.8265 2.75822e-05 26.912C0.0211287 12.0502 12.1965 -0.0320829 27.115 -0.000426215C41.9703 0.0312305 54.0401 12.2148 54 27.1399C53.9599 41.9447 41.7972 54.0186 26.9399 53.9996ZM18.8476 16.4083C17.6765 16.44 16.9844 16.8705 16.6151 17.7189C16.1952 18.6876 16.3893 19.574 17.1363 20.3253C19.0966 22.2901 21.0252 24.2908 23.0425 26.1965C23.7599 26.874 23.6397 27.2201 23.0045 27.83C21.078 29.6788 19.2148 31.5951 17.3241 33.4797C16.9211 33.8807 16.5581 34.3007 16.4505 34.8853C16.269 35.8835 16.6953 36.8332 17.5456 37.3102C18.4382 37.8124 19.5038 37.6626 20.3394 36.8416C22.3673 34.843 24.3866 32.836 26.3723 30.7994C26.8513 30.3077 27.1298 30.2866 27.6193 30.791C29.529 32.7579 31.4851 34.6784 33.4201 36.6179C33.8463 37.0442 34.2831 37.4431 34.9098 37.5486C35.9184 37.7196 36.849 37.2891 37.3196 36.4259C37.7964 35.5543 37.6677 34.5075 36.8912 33.714C34.9731 31.7555 33.0677 29.7801 31.0631 27.9145C30.238 27.1462 30.3688 26.7474 31.1031 26.053C32.9896 24.2655 34.8022 22.3977 36.6338 20.5511C37.7922 19.384 37.8914 17.9827 36.9081 17.0288C35.9501 16.1002 34.5975 16.2141 33.4623 17.3411C31.5188 19.2743 29.5649 21.199 27.6594 23.1659C27.1446 23.6978 26.8492 23.6957 26.3343 23.1659C24.4267 21.1969 22.4664 19.2806 20.5336 17.3369C19.9997 16.7966 19.4258 16.3661 18.8476 16.4083Z"
                          fill="#F34336"
                        ></path>
                      </svg>
                    </div>
                    {popupView === "login" ? (
                      <LoginWidget
                        redirect={false}
                        loginActionPopup={loginActionPopup}
                        notVerifyHandler={notVerifyHandler}
                      />
                    ) : popupView === "signup" ? (
                      <SignupWidget
                        redirect={false}
                        signupActionPopup={signupActionPopup}
                        changeContent={singupActionHandle}
                      />
                    ) : popupView === "verify" ? (
                      <VerifyWidget
                        redirect={false}
                        verifyActionPopup={verifyActionPopup}
                      />
                    ) : (
                      ""
                    )}
                  </div>
                </div>
              )}
              {parseInt(enable_multivendor) === 1 && messageWid && (
                <MessageWidget pusher={messageWid} />
              )}
            </div>
          ) : (
            <div className="w-full h-full fixed bg-white px-5 py-5">
              <span>
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="38"
                  height="38"
                  viewBox="0 0 38 38"
                  stroke="#FCBB38"
                >
                  <g fill="none" fillRule="evenodd">
                    <g transform="translate(1 1)" strokeWidth="2">
                      <circle strokeOpacity=".5" cx="18" cy="18" r="18" />
                      <path d="M36 18c0-9.94-8.06-18-18-18">
                        <animateTransform
                          attributeName="transform"
                          type="rotate"
                          from="0 18 18"
                          to="360 18 18"
                          dur="1s"
                          repeatCount="indefinite"
                        />
                      </path>
                    </g>
                  </g>
                </svg>
              </span>
            </div>
          )}
        </div>
      </div>
      {/*<LoginContext.Consumer>*/}
      {/*  {({ loginPopup, handlerPopup }) => (*/}
      {/*   */}
      {/*  )}*/}
      {/*</LoginContext.Consumer>*/}
    </>
  );
}
