.class public Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView$TouchEventGuard;
.super Ljava/lang/Object;
.source "TouchEventGuardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchEventGuard"
.end annotation


# instance fields
.field private final mServer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView;)V
    .locals 1
    .parameter "server"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView$TouchEventGuard;->mServer:Ljava/lang/ref/WeakReference;

    .line 34
    return-void
.end method


# virtual methods
.method public rejectTouchEvent(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 37
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView$TouchEventGuard;->mServer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView;

    .line 38
    .local v0, server:Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView;
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView;->rejectTouchEvent(Z)V

    .line 41
    :cond_0
    return-void
.end method
