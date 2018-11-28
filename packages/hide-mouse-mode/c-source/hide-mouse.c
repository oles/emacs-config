#include <X11/X.h>
#include <X11/extensions/Xfixes.h>

static Display *display;

void main() {
    XEvent e;

    display = XOpenDisplay(NULL);
    XFixesHideCursor(display, DefaultRootWindow(display));

    while (1) XNextEvent(display, &e);
}
