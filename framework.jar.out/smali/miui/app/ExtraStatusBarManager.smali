.class public Lmiui/app/ExtraStatusBarManager;
.super Ljava/lang/Object;
.source "ExtraStatusBarManager.java"


# static fields
.field public static final ACTION_CAPTURE_SCREEN:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.CAPTURE_SCREEN"

.field public static final ACTION_EXIT_FULLSCREEN:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.EXIT_FULLSCREEN"

.field public static final ACTION_EXPAND_TOGGLES_TAB:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.EXPAND_TOGGLE_TAB"

.field public static final ACTION_REQUEST_RESTART:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.REQUEST_RESTART"

.field public static final ACTION_STATUSBAR_LOADED:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.LOADED"

.field public static final ACTION_STATUSBAR_UNLOADED:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.UNLOADED"

.field public static final ACTION_TRIGGER_CAMERA_KEY:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.TRIGGER_CAMERA_KEY"

.field public static final DISABLE_BACKGROUND:I = 0x40000000

.field public static final DISABLE_FOR_KEYGUARD:I = -0x80000000

.field public static final DISABLE_FULLSCREEN:I = 0x20000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isExpandableUnderFullscreen(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_expandable_under_fullscreen"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setExpandableUnderFullscreen(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "enable"

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_expandable_under_fullscreen"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 52
    return-void

    .line 48
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
