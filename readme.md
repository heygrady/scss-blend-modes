# SCSS Blend Modes
CSS doesn't natively support color blending the way that Photoshop does. This library attempts to fake that by allowing you to blend a foreground color with a background color in order to approximate color blending. This was originally intended for use with the [Compass Photoshop Drop Shadow Plugin](https://github.com/heygrady/compass-photoshop-drop-shadow) but it proved impractical to integrate.

## Blending Functions
The included functions are based on the [blend.js](https://github.com/jseidelin/pixastic/blob/master/actions/blend.js) in the [Pixastic Image Processing Library](http://www.pixastic.com/lib/). I chose this library because JavaScript is easy enough to read and the blend modes seemed to match closely with what Photoshop offered. Additionally, a [detailed explaination of Photoshop blend modes](http://photoblogstop.com/photoshop/photoshop-blend-modes-explained) was used as a reference as well as the [Wikipedia article on blend modes](http://en.wikipedia.org/wiki/Blend_modes).

## Usage
These blend mode functions are not magic. In Photoshop, the blend mode functions are applied dynamically between two layers in order to create various effects. In CSS they can obly be use dto combine two solid colors together. They can be useful in times when a Photoshop design implements a blend mode on something like a drop shadow that is castover a mostly solid background. Choosing a dominant background color and a solid foreground color will allow for the apearance of a dynamically blended color.

```scss
.multiply {
	background-color: blend-multiply(#7FFFD4, #DEB887);
}
```

## Blending Functions
All functions expect a color as the `$foreground` and `$background` colors. Blending functions work by combining the colors from the top-most layer, the `$foreground` with the lower layer, the `$background`.

- **blend-normal(** *$foreground*, *$background* **)** - Normal is used primarily to preserve the opacity after the blending has been applied to the RGB values.
- **blend-multiply(** *$foreground*, *$background* **)**
- **blend-lighten(** *$foreground*, *$background* **)**
- **blend-darken(** *$foreground*, *$background* **)**
- **blend-lighten(** *$foreground*, *$background* **)**
- **blend-darken(** *$foreground*, *$background* **)**
- **blend-darkercolor(** *$foreground*, *$background* **)**
- **blend-lightercolor(** *$foreground*, *$background* **)**
- **blend-lineardodge(** *$foreground*, *$background* **)**
- **blend-linearburn(** *$foreground*, *$background* **)**
- **blend-difference(** *$foreground*, *$background* **)**
- **blend-screen(** *$foreground*, *$background* **)**
- **blend-exclusion(** *$foreground*, *$background* **)**
- **blend-overlay(** *$foreground*, *$background* **)**
- **blend-softlight(** *$foreground*, *$background* **)**
- **blend-hardlight(** *$foreground*, *$background* **)**
- **blend-colordodge(** *$foreground*, *$background* **)**
- **blend-colorburn(** *$foreground*, *$background* **)**
- **blend-linearlight(** *$foreground*, *$background* **)**
- **blend-vividlight(** *$foreground*, *$background* **)**
- **blend-pinlight(** *$foreground*, *$background* **)**
- **blend-hardmix(** *$foreground*, *$background* **)**
- **blend-colorblend(** *$foreground*, *$background* **)**
- **blend-dissolve(** *$foreground*, *$background* **)**
- **blend-divide(** *$foreground*, *$background* **)**
- **blend-hue(** *$foreground*, *$background* **)**
- **blend-luminosity(** *$foreground*, *$background* **)**
- **blend-saturation(** *$foreground*, *$background* **)**
- **blend-subtract(** *$foreground*, *$background* **)**

## HSV Functions
These functions are used to convert between RGB, HSL and HSV color formats. The HSV color format is not natively supported by CSS or Sass. These functions were taken directly from this [Gist](https://gist.github.com/1069204). HSV values are used to calculate the results for the `blend-colorblend`, `blend-hue`, `blend-luminosity` and `blend-saturation` functions.

- **hsv-to-hsl(** *$h*, [*$s: 0*, *$v: 0*] **)** - Converts a HSV color values into HSL color values. `$h` can be a list of three values representing `$h`, `$s` and `$v`.
- **hsl-to-hsv(** *$h*, [*$ss: 0*, *$ll: 0*] **)** - Converts a HSL color values into HSV color values.$h` can be a list of three values representing `$h`, `$ss` and `$ll`.
- **color-to-hsv(** *$color*)** - Converts a [Sass Color](http://sass-lang.com/docs/yardoc/Sass/Script/Color.html) into a [list](http://sass-lang.com/docs/yardoc/Sass/Script/List.html) HSV color values.
- **hsv-to-color(** *$h*, [*$s: 0*, *$v: 0*] **)** - Converts a list of HSV color values into a Sass Color. $h` can be a list of three values representing `$h`, `$s` and `$v`

## Internal Functions
These functions are used to save redundant code and are not meant to be used directly. These functions perform the blending operation on a single r, g or b value.

**NOTE:** These functions are not intended to be used directly.

- **blend-lighten-color(** *$foreground*, *$background* **)**
- **blend-darken-color(** *$foreground*, *$background* **)**
- **blend-lineardodge-color(** *$foreground*, *$background* **)**
- **blend-linearburn-color(** *$foreground*, *$background* **)**
- **blend-screen-color(** *$foreground*, *$background* **)**
- **blend-exclusion-color(** *$foreground*, *$background* **)**
- **blend-overlay-color(** *$foreground*, *$background* **)**
- **blend-softlight-color(** *$foreground*, *$background* **)**
- **blend-hardlight-color(** *$foreground*, *$background* **)**
- **blend-colordodge-color(** *$foreground*, *$background* **)**
- **blend-colorburn-color(** *$foreground*, *$background* **)**
- **blend-linearlight-color(** *$foreground*, *$background* **)**
- **blend-vividlight-color(** *$foreground*, *$background* **)**
- **blend-pinlight-color(** *$foreground*, *$background* **)**
- **blend-hardmix-color(** *$foreground*, *$background* **)**
- **blend-divide-color(** *$foreground*, *$background* **)**
