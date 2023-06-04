### Understand how HTML is used for web development
________________________
>HTML stands for HyperText Markup Language and is used to create the structure and content of a webpage.

Key points to HTML language:
- Most HTML elements contain opening and closing tags with raw text or other HTML tags between them.
- HTML elements can be nested inside other elements. (The enclosed element is the child of the enclosing parent element.)
- It is a permissive language

### Use HTML to build a structure for a website
________________________

Basic elements and set-up needed to structure an HTML page:
- The <!DOCTYPE html> declaration should always be the first line of code in your HTML files. This lets the browser know what version of HTML to expect.
- The <html> element will contain all of your HTML code.
- Information about the web page, like the title, belongs within the <head> of the page.
- Any visible content should be placed within the opening and closing <body> tags.
- Headings and sub-headings, <h1> to <h6> tags, are used to provide titles for sections of content.
- /<p>, <span> and <div> tags specify text or blocks.
- The <em> and <strong> tags are used to emphasize text.
- Line breaks are created with the <br> tag.
- Ordered lists (<ol>) are numbered and unordered lists (<ul>) are bulleted.
- Images (<img>) and videos (<video>) can be added by linking to an existing source.
- You can add a title to your web page by using the <title> element, inside of the head.
- Anchor tags (<a>) are used to link to internal pages, external pages or content on the same page.

### Create tables in HTML documents
________________________
NB=> Table in HTML is generated row by row. 
e.g.<table> <tr> <th colspan=/rowspan=>  <td colspan=/rowspan=>
- The <table> element creates a table.
- The <tr> element adds rows to a table.
- To add data to a row, you can use the <td> element.
- Table headings clarify the meaning of data. Headings are added with the <th> element.
- Table data can span columns using the `colspan` attribute.
- Table data can span rows using the `rowspan` attribute.
- Tables can be split into three main sections: a head, a body, and a footer.
- A table’s head is created with the <thead> element.
- A table’s body is created with the <tbody> element.
- A table’s footer is created with the <tfoot> element.

### Write clearer, more accessible HTML using Semantic HTML tags
________________________
>Semantic HTML is a modern standard and that introduces meaning to a page through specific elements that provide context as to what is in between the tags.
Benefits include:
- Makes a website accessible for people who use screen readers to translate the webpage.
- improves your website’s SEO.

Key Semantic hTML tags include:
- <header>, <nav> , <main> and <footer> create the basic structure of the webpage.
- <section> defines elements in a document, such as chapters, headings, or any other area of the document with the same theme.
- <article> holds content that makes sense on its own such as articles, blogs, , etc.
- <aside> contains information that is related to the main content, but not required in order to understand the dominant information (ie. comments, sidebars, advertising)
- <figure> encapsulates all types of media.
- <figcaption> is used to describe the media in <figure>.
- <video>, <embed>, and <audio> elements are used for media files.