### Understand how CSS is used for web development
___________________________


### Use CSS to add initial styling to your website
___________________________
There are 3 ways to add CSS styling to a website:
- CSS inline styles can be written inside the opening HTML tag using the `style` attribute.
- An internal stylesheet is written using the <style> element inside the <head> element of an HTML file.
- An external stylesheet separates CSS code from HTML, by using the .css file extension.
>e.g. <link href='style.css' rel='stylesheet'>

Further points:

- CSS can select HTML elements by type, class, ID, and attribute.
- All elements can be selected using the universal selector.
- An element can have different states using the pseudo-class selector.
E.G:
    button:hover {
        color: blue;
    }
- Multiple CSS classes can be applied to one HTML element.

Some properties that can be defined in CSS include:
font-family
font-size
font-weight
text-align (left, right, centre)
color 
background-color
opacity 
background-image
!important !!!!!!!!!!!!!!
### Understand the Box Model in CSS
___________________________

>The box model comprises a set of properties used to create space around and between HTML elements.

- Borders surround the content area and padding of an element. 
- Padding is the space between the content area and the border.
- Margin is the amount of spacing outside of an element’s border.

- Horizontal margins add, so the total space between the borders of adjacent elements is equal to the sum of the right margin of one element and the left margin of the adjacent element.
- Vertical margins collapse, so the space between vertically adjacent elements is equal to the larger margin.

Properties:
- The `overflow` property can be set to display, hidden, or scroll, and dictates how HTML will render content that overflows its parent’s content area.
- `margin: 0 auto` horizontally centers an element inside of its parent content area, if it has a width.
- `padding`:
- `margin`:
- `visibility` :

NB:
The default value of the box-sizing property is content-box.In the default box model, box dimensions are affected by border thickness and padding.
- In default view:  width property = content width
- In border-box view: width property= content width + padding + border.
(Computer subtracts padding and border from element dimension to get to to content width.
)
E.G syntax:
    * {
    box-sizing: border-box;
    }
### Add positioning using CSS
___________________________
- The `position` property allows you to specify the position of an element.
- When set to `relative`, an element’s position is relative to its default position on the page.
- When set to `absolute`, an element’s position is relative to its closest positioned parent element. It can be pinned to any part of the web page, but the element will still move with the rest of the document when the page is scrolled.
- When set to `fixed`, an element’s position can be pinned to any part of the web page. The element will remain in view no matter what.
- When set to `sticky`, an element can stick to a defined offset position when the user scrolls its parent container.
- The `z-index` of an element specifies how far back or how far forward an element appears on the page when it overlaps other elements.
- After defining `position`; `top`, `bottom`, `left` and `right` attributes can be used.

- The `display` property allows you to control how an element flows vertically and horizontally in a document.
- `inline` elements take up as little space as possible, and they cannot have manually adjusted width or height.
- `block` elements take up the width of their container and can have manually adjusted heights.
- `inline-block` elements can have set width and height, but they can also appear next to each other and do not take up their entire container width.

- The `float` property can move elements as far left or as far right as possible on a web page.
- The `clear` property specifies what should happen with the element that is next to a floating element.
### Read CSS documentation
___________________________
