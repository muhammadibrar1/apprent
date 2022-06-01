import React from "react";

const SettingsWheelSvg = ({
  width, height, color, hovered,
}) => (
  <svg width={width || "16"} height={height || "16"} viewBox="0 0 16 16" fill={color || "#1DBD6B"} xmlns="http://www.w3.org/2000/svg">
    <path fillRule="evenodd" clipRule="evenodd" d="M14.3015 9.18512C14.5698 9.32762 14.7767 9.55262 14.9224 9.77762C15.2059 10.2426 15.183 10.8126 14.907 11.3151L14.3705 12.2151C14.0869 12.6951 13.558 12.9951 13.0138 12.9951C12.7456 12.9951 12.4467 12.9201 12.2014 12.7701C12.0021 12.6426 11.7722 12.5976 11.5269 12.5976C10.7681 12.5976 10.1319 13.2201 10.1089 13.9626C10.1089 14.8251 9.40378 15.5001 8.52235 15.5001H7.47995C6.59085 15.5001 5.8857 14.8251 5.8857 13.9626C5.87037 13.2201 5.2342 12.5976 4.47539 12.5976C4.22246 12.5976 3.99252 12.6426 3.8009 12.7701C3.55563 12.9201 3.24905 12.9951 2.98845 12.9951C2.43659 12.9951 1.90773 12.6951 1.62413 12.2151L1.09527 11.3151C0.811678 10.8276 0.796348 10.2426 1.07994 9.77762C1.20258 9.55262 1.43252 9.32762 1.69312 9.18512C1.90773 9.08012 2.04569 8.90762 2.17599 8.70512C2.55922 8.06012 2.32928 7.21262 1.67779 6.83012C0.918983 6.40262 0.673713 5.45012 1.1106 4.70762L1.62413 3.82262C2.06869 3.08012 3.01911 2.81762 3.78557 3.25262C4.4524 3.61262 5.31851 3.37262 5.70941 2.73512C5.83204 2.52512 5.90102 2.30012 5.8857 2.07512C5.87037 1.78262 5.95468 1.50512 6.10031 1.28012C6.3839 0.815122 6.89743 0.515122 7.45695 0.500122H8.53767C9.10486 0.500122 9.61839 0.815122 9.90199 1.28012C10.04 1.50512 10.1319 1.78262 10.1089 2.07512C10.0936 2.30012 10.1626 2.52512 10.2852 2.73512C10.6761 3.37262 11.5422 3.61262 12.2167 3.25262C12.9755 2.81762 13.9336 3.08012 14.3705 3.82262L14.884 4.70762C15.3286 5.45012 15.0833 6.40262 14.3168 6.83012C13.6653 7.21262 13.4354 8.06012 13.8263 8.70512C13.9489 8.90762 14.0869 9.08012 14.3015 9.18512ZM5.83193 8.00767C5.83193 9.18517 6.80534 10.1227 8.00869 10.1227C9.21205 10.1227 10.1625 9.18517 10.1625 8.00767C10.1625 6.83017 9.21205 5.88517 8.00869 5.88517C6.80534 5.88517 5.83193 6.83017 5.83193 8.00767Z">
      {hovered && <animateTransform attributeType="xml" attributeName="transform" type="rotate" from="360 8 8" to="0 8 8" dur="2s" additive="sum" repeatCount="indefinite" />}
    </path>
  </svg>
);

export default SettingsWheelSvg;