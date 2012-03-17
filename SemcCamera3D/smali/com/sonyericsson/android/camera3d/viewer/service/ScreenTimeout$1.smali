.class Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout$1;
.super Ljava/lang/Object;
.source "ScreenTimeout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;->onTilting(Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;->setKeepScreenOn(Z)V

    .line 92
    return-void
.end method
