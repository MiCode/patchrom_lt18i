.class Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnKeyWrapSelectionShareListener;
.super Lcom/sonyericsson/android/camera3d/view/MessagePopup$KeyEventKiller;
.source "MessagePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnKeyWrapSelectionShareListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup;)V
    .locals 1
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnKeyWrapSelectionShareListener;->this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$KeyEventKiller;-><init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Lcom/sonyericsson/android/camera3d/view/MessagePopup$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnKeyWrapSelectionShareListener;-><init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 367
    const/16 v1, 0x54

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 371
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$KeyEventKiller;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
