import React from "react";
import { Helmet } from "react-helmet";

export default ({ title, description, author, twitter, publicUrl }) => (
  <Helmet defaultTitle={title} titleTemplate={`%s · ${title}`}>
    <link rel="shortcut icon" href="/favicon.ico" />
    <link rel="apple-touch-icon" href="/icon.png" />

    <meta name="author" content={author} />
    <meta name="description" content={description} />

    <meta property="og:url" content={publicUrl} />
    <meta property="og:title" content={title} />
    <meta property="og:image" content={`${publicUrl}/icon.jpg`} />

    <meta name="twitter:card" content="summary" />
    <meta name="twitter:creator" content={twitter} />
    <meta name="twitter:title" content={title} />
    <meta name="twitter:description" content={description} />
    <meta name="twitter:image" content={`${publicUrl}/icon.jpg`} />
  </Helmet>
);
