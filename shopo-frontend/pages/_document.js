import Document, { Head, Html, Main, NextScript } from "next/document";

class MyDocument extends Document {
  render() {
    return (
      <Html>
        <Head>
          <link rel="icon" href="/assets/images/akurioq-favicon.png" type="image/png" />
          {process.env.NEXT_PWA_STATUS === 1 ||
            (process.env.NEXT_PWA_STATUS === "1" && (
              <link rel="manifest" href="/manifest.json" />
            ))}
          <meta name="theme-color" content="#fff" />
        </Head>
        <body>
          <Main />
          <NextScript />
        </body>
      </Html>
    );
  }
}

export default MyDocument;
