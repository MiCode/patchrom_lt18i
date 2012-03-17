.class public interface abstract Lcom/sonyericsson/android/camera3d/Capturer;
.super Ljava/lang/Object;
.source "Capturer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/Capturer$1;,
        Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;,
        Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;
    }
.end annotation


# static fields
.field public static final EV_ABORT:I = 0xf0

.field public static final EV_AF_DONE:I = 0xb0

.field public static final EV_CAMERA_ERROR:I = 0x80

.field public static final EV_CAMERA_READY:I = 0x85

.field public static final EV_CAPTURE_DONE:I = 0x3b

.field public static final EV_CAPTURE_FAILED:I = 0x3c

.field public static final EV_CAPTURE_PROGRESS:I = 0x3d

.field public static final EV_CHANGE_ORIENTATION:I = 0xa0

.field public static final EV_EXTERNAL_MEMORY_ERROR:I = 0x81

.field public static final EV_EXTMEM_STORE_DONE:I = 0x50

.field public static final EV_FACE_DETECT:I = 0xd2

.field public static final EV_FACE_DETECT_ERROR:I = 0xd3

.field public static final EV_FACE_DETECT_TIMEOUT:I = 0xd4

.field public static final EV_FACE_DETECT_TIMER_START:I = 0xd5

.field public static final EV_FOCUS_POSITION_CHANGED:I = 0x42

.field public static final EV_HDMI_CONNECTED:I = 0x100

.field public static final EV_HDMI_DISCONNECTED:I = 0x101

.field public static final EV_KEY_AUTOFOCUS:I = 0x31

.field public static final EV_KEY_AUTOFOCUS_CANCEL:I = 0x32

.field public static final EV_KEY_CAPTURE:I = 0x30

.field public static final EV_KEY_CAPTURE_TOUCH:I = 0x3a

.field public static final EV_KEY_RESUME_GEOTAG_DIALOG:I = 0x72

.field public static final EV_KEY_ZOOM_IN:I = 0x33

.field public static final EV_KEY_ZOOM_OUT:I = 0x34

.field public static final EV_KEY_ZOOM_STOP:I = 0x35

.field public static final EV_LOW_BATTERY:I = 0xf3

.field public static final EV_MEMORY_MOUNTED:I = 0x82

.field public static final EV_PAUSE_CONTROLLER:I = 0x70

.field public static final EV_PHONE_OFFHOOK:I = 0xf2

.field public static final EV_PHONE_RINGING:I = 0xf1

.field public static final EV_PICTURE_GET_COMPRESSED_DATA:I = 0xc1

.field public static final EV_PICTURE_GET_RAW_DATA:I = 0xc0

.field public static final EV_RESUME_CONTROLLER:I = 0x71

.field public static final EV_SCENE_CHANGE:I = 0x90

.field public static final EV_SELF_TIMER_CANCEL:I = 0xe4

.field public static final EV_SELF_TIMER_CAPTURE:I = 0xe3

.field public static final EV_SELF_TIMER_START:I = 0xe0

.field public static final EV_SELF_TIMER_STEP:I = 0xe1

.field public static final EV_SELF_TIMER_TIMEOUT:I = 0xe2

.field public static final EV_SETUP_CONTROLLER:I = 0x73

.field public static final EV_STORE_PROGRESS:I = 0x51

.field public static final EV_SURFACE_CHANGED:I = 0x11

.field public static final EV_SURFACE_DESTORY:I = 0x10

.field public static final EV_TOUCH_CHANGE_FOCUS_FACE:I = 0x41

.field public static final EV_VIDEO_ERROR:I = 0x84

.field public static final EV_VIDEO_INFO:I = 0x61

.field public static final EV_VIDEO_PROGRESS:I = 0x60

.field public static final EV_ZOOM_PROGRESS:I = 0x20

.field public static final TAG:Ljava/lang/String; = "Capturer"


# virtual methods
.method public abstract autofocus(Landroid/graphics/Rect;)V
.end method

.method public abstract cancelAutoFocus()V
.end method

.method public abstract cancelSelftimer()V
.end method

.method public abstract capture()V
.end method

.method public abstract release()V
.end method

.method public abstract startSelftimer()V
.end method

.method public abstract startZoomIn()V
.end method

.method public abstract startZoomOut()V
.end method

.method public abstract stopZoom()V
.end method

.method public abstract surfaceChanged(Landroid/view/SurfaceHolder;III)V
.end method

.method public abstract surfaceDestroyed(Landroid/view/SurfaceHolder;Z)V
.end method
