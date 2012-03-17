.class public Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;
.super Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
.source "ScreenTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout$ScreenTimeoutListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ScreenTimeout"


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout$ScreenTimeoutListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;)V
    .locals 1
    .parameter "window"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;->mWindow:Landroid/view/Window;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;->mListeners:Ljava/util/List;

    .line 52
    return-void
.end method


# virtual methods
.method public addListener(Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout$ScreenTimeoutListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method protected onPause(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 0
    .parameter "dataStore"

    .prologue
    .line 80
    return-void
.end method

.method protected onResume(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 0
    .parameter "dataStore"

    .prologue
    .line 75
    return-void
.end method

.method protected onTilting(Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;I)V
    .locals 2
    .parameter "sender"
    .parameter "current"

    .prologue
    .line 85
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;->setKeepScreenOn(Z)V

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 89
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout$1;-><init>(Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    return-void
.end method

.method public removeListener(Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout$ScreenTimeoutListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 2
    .parameter "isKeepScreenOn"

    .prologue
    const/16 v1, 0x80

    .line 63
    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method
