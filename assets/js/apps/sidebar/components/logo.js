import React from "react";
import device from "../styles/deviceConstants";

const Logo = () => (
  <div
    style={{
      display: 'flex',
      flexDirection: 'column',
      alignItems: 'center',
      marginTop: 30,
      marginBottom: 30,
    }}
  >
    <svg
      viewBox="0 0 77 78"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      style={{
        width: device.laptopL ? 77 : 60,
        height: device.laptopL ? 77 : 60,
      }}
    >
      <path d="M31.2993 76.8677C30.9514 76.8677 30.6035 76.8677 30.2557 76.7493C27.4726 76.1571 25.8492 73.1961 24.2257 70.235C23.0661 68.2216 21.9065 66.0896 20.399 65.0237C19.0075 64.0761 16.8042 63.7208 14.485 63.3655C11.2381 62.8917 7.7593 62.418 6.13585 59.8123C4.5124 57.2066 5.44009 53.8903 6.36778 50.5739C7.06354 48.3235 7.64334 46.0732 7.29546 44.415C6.94758 42.6384 5.55605 40.6249 4.16452 38.7299C2.19319 36.0057 0.221862 33.2816 0.801665 30.439C1.38147 27.5965 4.28048 25.9383 7.1795 24.2801C9.15083 23.0957 11.2381 21.9113 12.2818 20.3716C13.2095 18.9503 13.5573 16.6999 13.9052 14.3311C14.3691 11.0148 14.8329 7.46157 17.384 5.8034C19.9352 4.14523 23.1821 5.09276 26.429 6.04028C28.6322 6.75092 30.8355 7.34313 32.4589 6.98781C34.1983 6.63248 36.1697 5.2112 38.025 3.78991C40.6921 1.77642 43.3592 -0.237067 46.1423 0.355136C48.9253 0.947339 50.5488 3.90835 52.1722 6.86936C53.3318 8.88285 54.4914 11.0148 55.9989 12.0807C57.3905 13.0283 59.5937 13.3836 61.9129 13.7389C65.1598 14.2127 68.6386 14.6864 70.2621 17.2921C71.8855 19.8978 70.9578 23.2142 70.0302 26.5305C69.3344 28.7809 68.7546 31.0312 69.1025 32.6894C69.4504 34.466 70.8419 36.4795 72.2334 38.3745C74.2047 41.0987 76.1761 43.8228 75.5963 46.6654C75.0165 49.5079 72.0015 51.1661 69.2184 52.8243C67.2471 54.0087 65.1598 55.1931 64.1162 56.7328C63.1885 58.1541 62.8406 60.4045 62.4927 62.7733C62.0289 66.0896 61.565 69.6428 59.0139 71.301C56.4628 72.9592 53.2159 72.0117 49.969 71.0641C47.7657 70.3535 45.5625 69.7613 43.939 70.1166C42.1996 70.4719 40.2283 71.8932 38.3729 73.3145C36.1697 75.0911 33.7345 76.8677 31.2993 76.8677ZM20.9788 6.51404C20.0511 6.51404 19.2394 6.75092 18.4277 7.10625C16.4564 8.40909 15.9925 11.4885 15.6446 14.568C15.2967 17.0552 14.9489 19.5425 13.7893 21.2007C12.6297 22.9773 10.3104 24.2801 8.22315 25.4645C5.55605 27.0043 3.00492 28.4255 2.54107 30.6759C2.07723 32.8078 3.81664 35.2951 5.67201 37.7823C7.1795 39.7958 8.68699 41.9278 9.03487 44.0597C9.38275 46.0732 8.68699 48.5604 7.99122 50.9292C7.1795 53.8902 6.25181 56.9697 7.52738 58.9832C8.80295 60.9967 11.8179 61.4704 14.8329 61.8258C17.2681 62.1811 19.7032 62.5364 21.3267 63.7208C23.0661 64.9052 24.3417 67.274 25.5013 69.406C27.0088 72.1301 28.4003 74.7358 30.6035 75.2095C32.6908 75.6833 35.126 73.9067 37.5612 72.0117C39.5325 70.4719 41.6198 68.9322 43.7071 68.5769C45.6784 68.2216 48.1136 68.9322 50.4328 69.5244C53.3318 70.3535 56.3468 71.301 58.3181 69.9982C60.2895 68.6953 60.7533 65.6159 61.1012 62.5364C61.4491 60.0492 61.797 57.5619 62.9566 55.9037C64.1162 54.1271 66.4354 52.8243 68.5227 51.6399C71.1898 50.1002 73.7409 48.6789 74.2048 46.4285C74.6686 44.2966 72.9292 41.8093 71.0738 39.3221C69.5663 37.3086 68.0588 35.1766 67.7109 33.0447C67.3631 31.0312 68.0588 28.544 68.7546 26.1752C69.5663 23.2142 70.494 20.1347 69.2184 18.1212C67.9429 16.1077 64.9279 15.634 61.9129 15.2786C59.4777 14.9233 57.0426 14.568 55.4191 13.3836C53.6797 12.1992 52.4041 9.83038 51.2445 7.69845C49.737 4.97432 48.3455 2.36862 46.1423 1.89486C44.055 1.4211 41.6198 3.19771 39.1846 5.09276C37.2133 6.63248 35.126 8.17221 33.0387 8.52753C31.0674 8.88285 28.6322 8.17221 26.313 7.58001C24.4576 7.10625 22.6023 6.51404 20.9788 6.51404Z" fill="#1DBD6B" />
      <path d="M43.9391 77.3406C41.3879 77.3406 38.9528 75.3271 36.6335 73.4321C34.7782 71.8924 33.0388 70.4711 31.4153 70.1158C29.6759 69.7604 27.2407 70.3526 25.0375 70.9449C21.9065 71.7739 18.6596 72.603 16.2245 71.0633C13.9053 69.4051 13.4414 65.9704 13.0935 62.654C12.8616 60.2852 12.5137 57.9164 11.586 56.3767C10.6584 54.9554 8.80299 53.771 6.71569 52.5866C3.81668 50.81 0.801702 49.0334 0.337859 45.9539C-0.125984 42.9929 2.07727 40.2687 4.16456 37.5446C5.67205 35.6496 7.06358 33.9914 7.52742 32.2148C7.99126 30.4382 7.41146 28.0694 6.94762 25.7006C6.25185 22.3842 5.44013 19.0679 7.17954 16.6991C8.80299 14.3303 12.1658 14.0934 15.4127 13.8565C17.732 13.6196 20.1671 13.3828 21.7906 12.4352C23.1821 11.4877 24.4577 9.59265 25.6173 7.46072C27.3567 4.49971 29.2121 1.5387 32.1111 1.06493C34.8941 0.472732 37.5612 2.7231 40.2283 4.85503C42.0837 6.39476 43.8231 7.81604 45.4466 8.17137C47.186 8.52669 49.6211 7.93449 51.8244 7.34228C54.9553 6.5132 58.2022 5.68412 60.6374 7.22384C62.9566 8.88201 63.4205 12.3168 63.7683 15.6331C64.0003 18.0019 64.3481 20.3707 65.2758 21.9105C66.2035 23.3318 68.0589 24.5162 70.1462 25.7006C73.0452 27.4772 76.0602 29.2538 76.524 32.3332C76.9879 35.2942 74.7846 38.0184 72.6973 40.7425C71.1898 42.6376 69.7983 44.2957 69.3344 46.0723C68.9866 47.8489 69.4504 50.2178 69.9143 52.5866C70.61 55.9029 71.4217 59.2192 69.6823 61.588C68.0589 63.9569 64.696 64.1937 61.4491 64.4306C59.1299 64.6675 56.6947 64.9044 55.1872 65.8519C53.7957 66.7994 52.5202 68.6945 51.3605 70.8264C49.6211 73.7874 47.7658 76.7484 44.8667 77.2222C44.5189 77.3406 44.171 77.3406 43.9391 77.3406ZM30.1397 68.4576C30.7196 68.4576 31.1834 68.4576 31.6472 68.576C33.6186 69.0498 35.5899 70.5895 37.5612 72.2477C39.8804 74.1427 42.3156 76.1562 44.6348 75.8009C46.954 75.4456 48.5775 72.7215 50.085 69.9973C51.3605 67.8654 52.6361 65.615 54.3755 64.5491C56.2309 63.3647 58.782 63.1278 61.3332 62.8909C64.3481 62.654 67.3631 62.4171 68.6387 60.6405C69.9143 58.8639 69.2185 55.7845 68.6387 52.8235C68.0589 50.3362 67.4791 47.7305 68.0589 45.717C68.5227 43.7035 70.1462 41.69 71.6537 39.795C73.625 37.4262 75.5963 34.9389 75.2484 32.5701C74.9006 30.2013 72.1175 28.5431 69.5664 27.0034C67.4791 25.7006 65.3918 24.3977 64.2322 22.7396C63.0726 20.9629 62.7247 18.3573 62.4928 15.7516C62.1449 12.7905 61.797 9.59265 59.9416 8.40825C58.2022 7.22384 55.3032 7.93449 52.4042 8.76357C49.969 9.35577 47.4179 10.0664 45.3306 9.59265C43.3593 9.11889 41.3879 7.57916 39.5326 5.921C37.2133 4.02595 34.7782 2.01246 32.459 2.36778C30.1397 2.7231 28.5163 5.44723 27.0088 8.17137C25.7332 10.3033 24.4577 12.5537 22.7183 13.6196C20.8629 14.804 18.3118 15.0409 15.7606 15.2778C12.7456 15.5147 9.73067 15.7516 8.4551 17.5282C7.17954 19.3048 7.8753 22.3842 8.4551 25.3452C9.03491 27.8325 9.61471 30.4382 9.03491 32.4517C8.57107 34.4652 6.94762 36.4787 5.44013 38.3737C3.4688 40.7425 1.49747 43.2298 1.84535 45.5986C2.19323 47.9674 4.97629 49.6256 7.52742 51.1653C9.61471 52.4681 11.818 53.771 12.8616 55.4291C14.0212 57.2057 14.3691 59.8114 14.601 62.4171C14.9489 65.3781 15.2968 68.576 17.1522 69.7604C18.8916 70.9449 21.7906 70.2342 24.6896 69.4051C26.429 68.9314 28.4003 68.4576 30.1397 68.4576Z" fill="#1DBD6B" />
    </svg>
    <svg
      viewBox="0 0 77 13"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      style={{
        width: device.laptopL ? 77 : 60,
        height: device.laptopL ? 9.3 : 12,
        marginTop: device.laptopL ? 14 : 11,
      }}
    >
      <path d="M7.21276 8.98729H2.7872L1.55123 12.0008H0.275391L5.05978 0.842773L9.6847 12.0008H8.40886L7.21276 8.98729ZM6.73432 7.88778L4.98005 3.61191L3.1859 7.88778H6.73432Z" fill="white" />
      <path d="M16.1835 1.37207C17.2201 1.37207 18.0972 1.49424 18.8149 2.10508C19.5724 2.75664 19.7718 3.73398 19.7718 4.38554C19.7718 5.89227 18.8547 7.35828 16.4625 7.35828H15.4658V12.0007H14.3096V1.37207H16.1835ZM15.4658 6.25878H16.4227C17.7783 6.25878 18.6155 5.56649 18.6155 4.34482C18.6155 2.63447 17.0606 2.5123 16.3031 2.5123H15.4259V6.25878H15.4658Z" fill="white" />
      <path d="M26.4305 1.37207C27.4671 1.37207 28.3443 1.49424 29.0619 2.10508C29.8195 2.75664 30.0188 3.73398 30.0188 4.38554C30.0188 5.89227 29.1018 7.35828 26.7096 7.35828H25.7129V12.0007H24.5566V1.37207H26.4305ZM25.7129 6.25878H26.6697C28.0253 6.25878 28.8626 5.56649 28.8626 4.34482C28.8626 2.63447 27.3077 2.5123 26.5501 2.5123H25.7129V6.25878Z" fill="white" />
      <path d="M36.4773 1.37207C37.1949 1.37207 38.2315 1.41279 38.9891 1.94219C39.5871 2.34941 40.1453 3.16386 40.1453 4.30409C40.1453 5.933 39.1087 7.11395 37.5139 7.23612L40.8231 12.0007H39.4276L36.238 7.35828H35.959V12.0007H34.8027V1.37207H36.4773ZM35.959 6.2995H36.6766C38.1119 6.2995 38.9891 5.60722 38.9891 4.34482C38.9891 3.73398 38.8296 3.16386 38.1518 2.79736C37.6734 2.5123 37.1551 2.5123 36.6367 2.5123H35.9191V6.2995H35.959Z" fill="white" />
      <path d="M51.1494 2.47158H46.8833V5.64794H50.9899V6.74745H46.8833V10.8604H51.1494V12.0007H45.7271V1.37207H51.1494V2.47158Z" fill="white" />
      <path d="M56.3726 12.0013V0.924805L64.506 9.63944V1.37275H65.6623V12.49L57.5288 3.77539V12.0013H56.3726Z" fill="white" />
      <path d="M74.0348 2.47158V12.0007H72.8785V2.47158H70.3667V1.37207H76.5864V2.47158H74.0348Z" fill="white" />
    </svg>
  </div>
);

export default Logo;
