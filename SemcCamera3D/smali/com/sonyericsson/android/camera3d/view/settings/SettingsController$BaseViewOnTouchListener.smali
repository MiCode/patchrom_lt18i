.class Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$BaseViewOnTouchListener;
.super Ljava/lang/Object;
.source "SettingsController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseViewOnTouchListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1002
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$BaseViewOnTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1005
    const/4 v0, 0x0

    return v0
.end method
