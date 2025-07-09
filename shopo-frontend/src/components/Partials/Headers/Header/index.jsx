import Image from "next/image";
import Link from "next/link";
import { useEffect, useState } from "react";
import { useSelector } from "react-redux";
import ThinBag from "../../../Helpers/icons/ThinBag";
import Middlebar from "./Middlebar";
import Navbar from "./Navbar";
import TopBar from "./TopBar";
import ThinLove from "../../../Helpers/icons/ThinLove";
import Compair from "../../../Helpers/icons/Compair";
import SearchBox from "../../../Helpers/SearchBox";

export default function Header({
  topBarProps,
  drawerAction,
  settings,
  contact,
  languagesApi,
}) {
  const { cart } = useSelector((state) => state.cart);
  const [cartItems, setCartItem] = useState(null);
  const [searchKey, setSearchkey] = useState("");
  useEffect(() => {
    cart && setCartItem(cart.cartProducts);
  }, [cart]);

  return (
    <header className="header-section-wrapper relative print:hidden">
      <TopBar
        languagesApi={languagesApi}
        topBarProps={topBarProps}
        contact={contact && contact}
        className="quomodo-shop-top-bar"
      />
      <Middlebar
        settings={settings && settings}
        className="quomodo-shop-middle-bar lg:block hidden"
      />
      <div className="quomodo-shop-drawer lg:hidden block w-full h-[60px] bg-white">
        <div className="w-full h-full flex items-center px-2 space-x-2">
          <div onClick={drawerAction} className="pr-2">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              className="h-6 w-6"
              fill="none"
              viewBox="0 0 24 24"
              stroke="currentColor"
              strokeWidth="2"
            >
              <path
                strokeLinecap="round"
                strokeLinejoin="round"
                d="M4 6h16M4 12h16M4 18h7"
              />
            </svg>
          </div>
          <div className="relative w-[60px] h-[24px] flex-shrink-0">
            <Link href="/" passHref>
              <a>
                <Image
                  layout="fill"
                  objectFit="scale-down"
                  src="/assets/images/logo-1.png"
                  alt="akurika"
                />
              </a>
            </Link>
          </div>
          <div className="flex-1 flex items-center space-x-3.5">
            {/* Mobile search input and button only */}
            <form
              className="flex items-center h-[24px] bg-white border border-qgray-border rounded overflow-hidden max-w-[135px] flex-shrink"
              style={{ minWidth: 0 }}
              onSubmit={e => {
                e.preventDefault();
                if (searchKey.trim()) {
                  window.location.href = `/search?search=${encodeURIComponent(searchKey)}`;
                }
              }}
            >
              <input
                type="text"
                value={searchKey}
                onChange={e => setSearchkey(e.target.value)}
                className="flex-1 px-1 h-full text-xs outline-none min-w-[75px]"
                placeholder="Search..."
                style={{ width: 0 }}
              />
              <button
                type="submit"
                className="bg-qyellow text-black px-2 h-full text-xs font-semibold flex-shrink-0"
                style={{ minWidth: '40px' }}
              >
                Go
              </button>
            </form>
            <Link href="/wishlist" passHref>
              <a className="relative flex items-center justify-center flex-shrink-0 h-[24px]">
                <ThinLove className="fill-current" />
                <span className="w-[16px] h-[16px] rounded-full bg-qyellow absolute -top-2 -right-2 flex justify-center items-center text-[9px]">
                  {useSelector((state) => state.wishlistData.wishlistData?.wishlists?.data?.length || 0)}
                </span>
              </a>
            </Link>
            <Link href="/cart" passHref>
              <a className="relative flex items-center justify-center flex-shrink-0 h-[24px]">
                <ThinBag />
                <span className="w-[16px] h-[16px] rounded-full bg-qyellow absolute -top-2 -right-2 flex justify-center items-center text-[9px]">
                  {cartItems ? cartItems.length : 0}
                </span>
              </a>
            </Link>
          </div>
        </div>
      </div>
      <Navbar className="quomodo-shop-nav-bar lg:block hidden" />
    </header>
  );
}
