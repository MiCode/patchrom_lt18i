.class Lcom/sonyericsson/android/camera3d/view/MessagePopup$KeyEventKiller;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyEventKiller"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$KeyEventKiller;-><init>()V

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

    .line 348
    const/16 v1, 0x52

    if-ne p2, v1, :cond_1

    .line 355
    :cond_0
    :goto_0
    return v0

    .line 350
    :cond_1
    const/16 v1, 0x50

    if-eq p2, v1, :cond_0

    .line 352
    const/16 v1, 0x1b

    if-eq p2, v1, :cond_0

    .line 355
    const/4 v0, 0x0

    goto :goto_0
.end method
